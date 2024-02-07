import 'package:flutter/material.dart';

class AboutUsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // About Us section
            Text(
              'About Us',
              style: TextStyle(
                color: Color(0xFF116466),
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'The Computer Science and Engineering (CSE) discipline was set up in 2005. '
                  'It is one of the disciplines that offers undergraduate (B.Tech), postgraduate (M.Tech), '
                  'and research programs (PhD). The CSE department is bound to give aspiring computer science '
                  'students the best academic path for building and developing their bright future in the core areas '
                  'of computer science. – AI & Machine Learning, Data Science, Computer Vision, Image Processing, '
                  'WSN, IoT and Embedded system, Network and Information Security, Cyber Security and Hardware '
                  'Security, Cloud and Cluster Computing.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),

            // Mission Statement section
            Text(
              'Mission Statement',
              style: TextStyle(
                color: Color(0xFF116466),
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'The mission of the Computer Engineering Department is to provide educational programs that would '
                  'encourage students to read critically, reason analytically, communicate persuasively, apply '
                  'professionally and prepare them to excel in the field of computing.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),

            // Vision Statement section
            Text(
              'Vision Statement',
              style: TextStyle(
                color: Color(0xFF116466),
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'The vision of the Computer Engineering Department is to recognize itself as renowned department in '
                  'the field of technical education in Computer Engineering and strives to carry out the superior level '
                  'of research based on the quality, innovation and excellence; with the help of its stakeholders viz. '
                  'the students, research scholars, faculty members, the support staff and the alumni.',
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
    home: AboutUsPage(),
  ));
}
