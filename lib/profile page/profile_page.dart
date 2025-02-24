import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile Page',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _aadharController = TextEditingController();
  bool _isAnonymous = false;
  bool _isEditing = false;
  String _name = 'John Doe';
  String _email = 'john.doe@example.com';
  String _phone = '+1234567890';
  String _aadhar = '';

  @override
  void initState() {
    super.initState();
    _nameController.text = _name;
    _emailController.text = _email;
    _phoneController.text = _phone;
    _aadharController.text = _aadhar;
  }

  void _toggleEditing() {
    setState(() {
      _isEditing = !_isEditing;
    });
  }

  void _saveChanges() {
    setState(() {
      _name = _nameController.text;
      _email = _emailController.text;
      _phone = _phoneController.text;
      _aadhar = _aadharController.text;
      _isEditing = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile Settings'),
        actions: [
          IconButton(
            icon: Icon(_isEditing ? Icons.check : Icons.edit),
            onPressed: _isEditing ? _saveChanges : _toggleEditing,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundImage: NetworkImage(
                    'https://placehold.co/100x100?text=Profile+Picture',
                  ),
                ),
                SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      _name,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(_email, style: TextStyle(color: Colors.grey[600])),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),
            TextField(
              controller: _nameController,
              decoration: InputDecoration(
                labelText: 'Name',
                border: OutlineInputBorder(),
              ),
              enabled: _isEditing,
            ),
            SizedBox(height: 20),
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
              enabled: _isEditing,
            ),
            SizedBox(height: 20),
            TextField(
              controller: _phoneController,
              decoration: InputDecoration(
                labelText: 'Phone Number',
                border: OutlineInputBorder(),
              ),
              enabled: _isEditing,
            ),
            SizedBox(height: 20),
            TextField(
              controller: _aadharController,
              decoration: InputDecoration(
                labelText: 'Verify with Aadhar',
                border: OutlineInputBorder(),
              ),
              enabled: _isEditing,
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment : MainAxisAlignment.spaceBetween,
              children: [
                Text('Set Profile Anonymous'),
                Switch(
                  value: _isAnonymous,
                  onChanged:
                  _isEditing
                      ? (bool? value) {
                    setState(() {
                      _isAnonymous = value!;
                    });
                  }
                      : null,
                ),
              ],
            ),
            SizedBox(height: 20),
            if (_isEditing)
              ElevatedButton(
                onPressed: _saveChanges,
                child: Text('Save Changes'),
              ),
          ],
        ),
      ),
    );
  }
}
