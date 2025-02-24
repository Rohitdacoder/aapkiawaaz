import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Complaints Tracker',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: TrackComplaintsPage(),
    );
  }
}

class Complaint {
  final String title;
  final String authority;
  final int upvotes;
  final int severity;
  final int urgency;
  int followers;
  bool isResolved;

  Complaint({
    required this.title,
    required this.authority,
    required this.upvotes,
    required this.severity,
    required this.urgency,
    this.followers = 0,
    this.isResolved = false,
  });
}

class TrackComplaintsPage extends StatefulWidget {
  @override
  _TrackComplaintsPageState createState() => _TrackComplaintsPageState();
}

class _TrackComplaintsPageState extends State<TrackComplaintsPage> {
  List<Complaint> unresolvedComplaints = [
    Complaint(
      title: "Pothole on Main Street",
      authority: "City Municipal Corporation",
      upvotes: 45,
      severity: 3,
      urgency: 2,
      followers: 10,
    ),
    Complaint(
      title: "Street Light Not Working",
      authority: "Electricity Department",
      upvotes: 23,
      severity: 2,
      urgency: 1,
      followers: 5,
    ),
  ];

  List<Complaint> resolvedComplaints = [
    Complaint(
      title: "Garbage Pileup in Park",
      authority: "Sanitation Department",
      upvotes: 67,
      severity: 4,
      urgency: 3,
      followers: 15,
      isResolved: true,
    ),
  ];

  void _resolveComplaint(Complaint complaint) {
    setState(() {
      complaint.isResolved = true;
      unresolvedComplaints.remove(complaint);
      resolvedComplaints.add(complaint);
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Track My Complaints'),
          bottom: TabBar(
            tabs: [
              Tab(text: 'Unresolved (${unresolvedComplaints.length})'),
              Tab(text: 'Resolved (${resolvedComplaints.length})'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            _buildComplaintsList(unresolvedComplaints, false),
            _buildComplaintsList(resolvedComplaints, true),
          ],
        ),
      ),
    );
  }

  Widget _buildComplaintsList(List<Complaint> complaints, bool isResolved) {
    return ListView.builder(
      padding: EdgeInsets.all(16),
      itemCount: complaints.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ComplaintDetailPage(complaint: complaints[index]),
              ),
            );
          },
          child: ComplaintItem(
            complaint: complaints[index],
            isResolved: isResolved,
            onResolve: isResolved ? null : () => _resolveComplaint(complaints[index]),
          ),
        );
      },
    );
  }
}

class ComplaintItem extends StatelessWidget {
  final Complaint complaint;
  final bool isResolved;
  final VoidCallback? onResolve;

  const ComplaintItem({
    required this.complaint,
    required this.isResolved,
    this.onResolve,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(bottom: 16),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  complaint.title,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                if (!isResolved && onResolve != null)
                  ElevatedButton.icon(
                    icon: Icon(Icons.check_circle, size: 18),
                    label: Text('Resolve'),
                    onPressed: onResolve,
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                    ),
                  ),
              ],
            ),
            SizedBox(height: 8),
            Text(
              'Authority: ${complaint.authority}',
              style: TextStyle(color: Colors.grey[600]),
            ),
            SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildMetricColumn(Icons.thumb_up, '${complaint.upvotes}'),
                _buildMetricColumn(Icons.warning, '${complaint.severity}'),
                _buildMetricColumn(Icons.timer, '${complaint.urgency}'),
                _buildMetricColumn(Icons.notifications_active, 'Following (${complaint.followers})',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMetricColumn(IconData icon, String text) {
    return Column(
      children: [
        Icon(icon, size: 20, color: Colors.blue),
        SizedBox(height: 4),
        Text(text, style: TextStyle(fontSize: 12)),
      ],
    );
  }
}

class ComplaintDetailPage extends StatelessWidget {
  final Complaint complaint;

  const ComplaintDetailPage({required this.complaint});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Complaint Details'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              complaint.title,
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Text(
              'Authority: ${complaint.authority}',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 8),
            Text(
              'Upvotes: ${complaint.upvotes}',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 8),
            Text(
              'Severity: ${complaint.severity}',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 8),
            Text(
              'Urgency: ${complaint.urgency}',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 8),
            Text(
              'Followers: ${complaint.followers}',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 8),
            Text(
              'Status: ${complaint.isResolved ? 'Resolved' : 'Unresolved'}',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
