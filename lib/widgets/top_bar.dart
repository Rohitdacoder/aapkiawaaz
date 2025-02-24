import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Image.asset('asset/img.png'),
      ),
      title: const Text(
        "AAWAZ",
        style: TextStyle(
          color: Colors.green,
          fontWeight: FontWeight.bold,
        ),
      ),
      actions: const [
        Icon(Icons.notifications_none, color: Colors.black),
        SizedBox(width: 10),
        Icon(Icons.help_outline, color: Colors.black),
        SizedBox(width: 10),
        Icon(Icons.account_circle_outlined, color: Colors.black),
        SizedBox(width: 10),
      ],
    );
  }
}
