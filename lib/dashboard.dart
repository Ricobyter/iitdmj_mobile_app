import 'dart:async';
import 'package:flutter/material.dart';

class DashboardPage extends StatefulWidget {
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage>
    with AutomaticKeepAliveClientMixin {
  int _currentPage = 0;
  final PageController _pageController = PageController();

  // List of images to display
  final List<String> images = [
    "assets/images/cc.jpg",
    "assets/images/MTech-Lab.jpg",
    "assets/images/Research-Lab.jpg",
    "assets/images/Tinkering-Lab.jpg",
    "assets/images/Computer-Lab.jpg",
    "assets/images/Server-Room.jpg",
    "assets/images/green_view.jpeg",
    "assets/images/IMG_0220.png",
  ];

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
    // Start the automatic image change timer
    startImageTimer();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context); // Necessary for AutomaticKeepAliveClientMixin

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Image slider
          Container(
            height: 200, // Set the desired height for the image container
            child: PageView.builder(
              controller: _pageController,
              itemCount: images.length + 2,
              onPageChanged: (int page) {
                setState(() {
                  _currentPage = page % images.length;
                });
              },
              itemBuilder: (context, index) {
                return Center(
                  child: Image.asset(
                    images[index % images.length],
                    fit: BoxFit.cover,
                    height: 250,
                  ),
                );
              },
            ),
          ),

          SizedBox(height: 20),
          // Text container
          Container(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Heading centered using Center widget
                Center(
                  child: Text(
                    'WHY JOIN CSE@IIITDMJ',
                    style: TextStyle(
                      color: Color(0xFF116466),
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                // Paragraph
                Text(
                  'An environment and the curriculum that provide you the right blend of flexibility and formality to nurture your dreams and help shaping, polishing them to turn into a reality...\n...and a catalyst for the substainable socio-economic development of the country',
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

  // Timer for automatic image change
  void startImageTimer() {
    Timer.periodic(Duration(seconds: 5), (timer) {
      _pageController.nextPage(
        duration: Duration(milliseconds: 500),
        curve: Curves.easeIn,
      );
    });
  }
}
