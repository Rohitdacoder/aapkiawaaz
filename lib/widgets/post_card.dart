import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  @override

  var likes=345;
  var disc=257;
  var shares=824;
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            title: const Text(
              "Bank Scam, no help from Police",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: const Text(
              "Bareilly, Uttar Pradesh",
              style: TextStyle(color: Colors.blue),
            ),
            trailing: const Icon(Icons.more_vert),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              'asset/bank_scam.png',
              height: 180,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: const Text(
              "Waiting for the approved loan for irrigation, I'm visiting the bank manager again and again... read more.",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const Divider(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildIconText(Icons.thumb_up_alt_outlined, "$likes support"),
                _buildIconText(Icons.chat_bubble_outline, "$disc Discussion"),
                _buildIconText(Icons.share_outlined, "$shares Share"),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildIconText(IconData icon, String text) {
    return Row(
      children: [
        Icon(icon, size: 20, color: Colors.blue),
        const SizedBox(width: 4),
        Text(text, style: const TextStyle(fontSize: 14, color: Colors.black)),
      ],
    );
  }
}
