import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Address section
            Text(
              'Address',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Computer Science & Engineering Department\nPandit Dwarka Prasad Mishra\nIndian Institute of Information Technology\nDesign & Manufacturing Jabalpur\nDumna Airport Road\nP.O.: Khamaria\nJabalpur - 482005\nMadhya Pradesh, India\nTel: 0761-2794261 Fax: +91-761-2632524',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: ContactPage(),
  ));
}
