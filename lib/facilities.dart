import 'package:flutter/material.dart';

class FacilitiesProgram extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'What you get when you enroll with us',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Knowledge is not what you acquire. It is the entity that you earn at the cost of comfort!',
              style: TextStyle(fontSize: 16),
            ),
            // Facilities section
            buildFacilitySection(
              'High Performance Computing Lab',
              'Specification of Parallel Cluster (for Central Computing Facility) - JS22 Blade No.3, '
                  '16GB(2*8GB) DDR2 533 Mhz DiMMs, IBM 146GB SAS 10K SFF HDD, IBM blade center JS22 4-core 4.0 Ghz Processor, '
                  'Nvidia DGX Station A100 (AI Data Center in a Box)',
            ),
            buildFacilitySection('Fundamental of Computing Lab'),
            buildFacilitySection('Object Oriented Programming Lab'),
            buildFacilitySection('Engineering Literacy Lab'),
            buildFacilitySection('Database Lab'),
            buildFacilitySection('Computer Networking Lab'),
            buildFacilitySection('Software Engineering Research Lab'),
            buildFacilitySection('Image Processing and Computer Vision Lab'),
            buildFacilitySection('Unix Lab'),
            buildFacilitySection('Biometric Lab'),
            buildFacilitySection('Cryptography and Network Security Lab'),
            buildFacilitySection('IoT and Embedded Systems Lab'),
            buildFacilitySection('Computational Intelligence Lab'),
            SizedBox(height: 20),

            // What you get when you enroll with us section

          ],
        ),
      ),
    );
  }

  Widget buildFacilitySection(String facilityName, [String? specification]) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          facilityName,
          style: TextStyle(
            color: Color(0xFF116466),
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        if (specification != null)
          Text(
            specification,
            style: TextStyle(fontSize: 16),
          ),
        SizedBox(height: 20),
      ],
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: FacilitiesProgram(),
  ));
}