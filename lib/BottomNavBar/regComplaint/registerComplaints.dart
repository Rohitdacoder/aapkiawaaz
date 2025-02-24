import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'dart:math';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import '../../IsarDatabase/complaint.dart';

late Isar isar;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final dir = await getApplicationDocumentsDirectory();
  isar = await Isar.open([ComplaintSchema], directory: dir.path);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ComplaintForm(),
    );
  }
}

class ComplaintForm extends StatefulWidget {
  ComplaintForm({super.key});

  @override
  _ComplaintFormState createState() => _ComplaintFormState();
}

class _ComplaintFormState extends State<ComplaintForm> {
  String? selectedPdf;
  String? selectedImage;
  String? selectedVideo;
  String? selectedState;
  String? selectedCity;
  String? selectedGovernmentType;
  String complaintId = _generateComplaintId();

  static String _generateComplaintId() {
    Random random = Random();
    int randomNumber = random.nextInt(1000000);
    return 'CMP${randomNumber.toString().padLeft(6, '0')}';
  }

  Map<String, List<String>> cityData = {
    'Maharashtra': ['Mumbai', 'Pune', 'Nagpur'],
    'Karnataka': ['Bangalore', 'Mysore', 'Hubli'],
    'Tamil Nadu': ['Chennai', 'Coimbatore', 'Madurai'],
  };

  Future<void> pickFile(String type) async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: type == 'pdf'
          ? FileType.custom
          : type == 'image'
          ? FileType.image
          : FileType.video,
      allowedExtensions: type == 'pdf' ? ['pdf'] : null,
    );
    if (result != null) {
      setState(() {
        if (type == 'pdf') {
          selectedPdf = result.files.single.name;
        } else if (type == 'image') {
          selectedImage = result.files.single.name;
        } else if (type == 'video') {
          selectedVideo = result.files.single.name;
        }
      });
    }
  }

  Future<void> saveComplaint() async {
    final complaint = Complaint()
      ..complaintId = complaintId
      ..governmentType = selectedGovernmentType ?? ''
      ..state = selectedState ?? ''
      ..city = selectedCity ?? ''
      ..complaintTo = 'Example Complaint To'
      ..ministry = 'Example Ministry'
      ..grievance = 'Example Grievance'
      ..address = 'Example Address'
      ..pdf = selectedPdf
      ..image = selectedImage
      ..video = selectedVideo;

    await isar.writeTxn(() async {
      await isar.complaints.put(complaint);
    });

    print("Complaint saved: ${complaint.complaintId}");
  }

  Widget buildDropdown(String label, List<String> items, ValueChanged<String?> onChanged) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 5),
          DropdownButtonFormField<String>(
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              contentPadding: EdgeInsets.symmetric(horizontal: 10),
            ),
            value: items.isNotEmpty ? items.first : null,
            items: items
                .map((item) => DropdownMenuItem(
              value: item,
              child: Text(item),
            ))
                .toList(),
            onChanged: onChanged,
          ),
        ],
      ),
    );
  }

  Widget buildTextField(String label) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 5),
          TextField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              contentPadding: EdgeInsets.symmetric(horizontal: 10),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildLargeTextField(String label) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 5),
          TextField(
            maxLines: 5,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              Text(
                'Complaint ID: $complaintId',
                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              buildDropdown('Government Type', ['District', 'State', 'Central'], (value) {
                setState(() {
                  selectedGovernmentType = value;
                });
              }),
              buildDropdown('State', cityData.keys.toList(), (value) {
                setState(() {
                  selectedState = value;
                  selectedCity = null;
                });
              }),
              buildDropdown('City', selectedState != null ? cityData[selectedState]! : [], (value) {
                setState(() {
                  selectedCity = value;
                });
              }),
              buildTextField('Complaint To'),
              buildTextField('Ministry'),
              buildLargeTextField('Grievance'),
              buildTextField('Address'),
              const SizedBox(height: 10),

              // File Pickers with Displayed File Names
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 100,
                    child: Column(
                      children: [
                        ElevatedButton(
                          onPressed: () => pickFile('pdf'),
                          child: const Text('Select PDF'),
                        ),
                        if (selectedPdf != null)
                          Text(selectedPdf!, style: TextStyle(fontSize: 12, color: Colors.grey)),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 100,
                    child: Column(
                      children: [
                        ElevatedButton(
                          onPressed: () => pickFile('image'),
                          child: const Text('Select Image'),
                        ),
                        if (selectedImage != null)
                          Text(selectedImage!, style: TextStyle(fontSize: 12, color: Colors.grey)),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 100,
                    child: Column(
                      children: [
                        ElevatedButton(
                          onPressed: () => pickFile('video'),
                          child: const Text('Select Video'),
                        ),
                        if (selectedVideo != null)
                          Text(selectedVideo!, style: TextStyle(fontSize: 12, color: Colors.grey)),
                      ],
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 20),
              Center(
                child: ElevatedButton(
                  onPressed: () async {
                    await saveComplaint();
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Complaint Submitted!')),
                    );
                  },
                  child: const Text('Submit'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
