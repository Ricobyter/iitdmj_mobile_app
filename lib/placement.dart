import 'package:flutter/material.dart';

class PlacementProgram extends StatefulWidget {
  const PlacementProgram({super.key});

  @override
  State<PlacementProgram> createState() => _PlacementProgramState();
}

class _PlacementProgramState extends State<PlacementProgram> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("Placement Page"),
      ),
    );
  }
}
