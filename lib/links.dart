import 'package:flutter/material.dart';

class LinkPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Important Links',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            BulletedList(),
          ],
        ),
      ),
    );
  }
}

class BulletedList extends StatelessWidget {
  final List<String> items = [
    'IIITDM Jabalpur Home',
    'Academic Calendar',
    'Holidays 2023',
    'Placement Cell',
    'About Us',
    'E & ICT Academy',
    'Web Team',
    'TA Duty 2023',
    'Project Based Internship',
    'Placement Cell',
    'Dean of Academics',
    'Dean of Students',
    'Dean of Research and Development',
    'Dean of Planning and Development',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: items.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 4.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                Icons.arrow_right,
                size: 20,
              ),
              SizedBox(width: 8),
              Expanded(
                child: Text(
                  items[index],
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
