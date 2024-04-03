import 'package:flutter/material.dart';

class Comparison extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [Text("비교하기")],
          ),
        ),
      ),
    );
  }
}
