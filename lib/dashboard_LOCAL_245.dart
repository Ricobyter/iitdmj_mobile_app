import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Image container
          Container(
            margin: EdgeInsets.only(top: 0, bottom: 10),
            child: Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Image.asset("assets/images/college.jpeg", fit: BoxFit.cover,),
              ),
            ),
          ),
          // Text container
          Container(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Heading
                Center(
                  child: Text(
                    'Welcome to IIIT Jabalpur',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(height: 10), // Add space between heading and paragraph
                // Paragraph
                Text(
                  'IIIT Jabalpur is a premier institute in the field of Computer Science and Engineering. We strive for excellence in education, research, and innovation. Our dedicated faculty, state-of-the-art facilities, and vibrant student community make IIIT Jabalpur a great place to learn and grow.',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
