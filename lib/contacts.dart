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

            // Enquiry/Feedback form
            SizedBox(height: 20),
            Text(
              'General Enquiry/Feedback',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            // Form fields with borders
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(5),
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Enter Name',
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(horizontal: 10),
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(5),
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Enter Last Name',
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(horizontal: 10),
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(5),
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Enter Email',
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(horizontal: 10),
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(5),
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Enter Phone Number',
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(horizontal: 10),
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(5),
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Write Your Message',
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                ),
                maxLines: 5,
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Handle form submission
              },
              style: ElevatedButton.styleFrom(
                primary: Color(0xFF116466), // Changed button color
              ),
              child: Text(
                'Submit',
                style: TextStyle(color: Colors.white), // Changed text color to white
              ),
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