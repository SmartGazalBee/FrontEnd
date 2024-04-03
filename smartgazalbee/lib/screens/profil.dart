import 'package:flutter/material.dart';

class Profil extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [Text("프로필")],
          ),
        ),
      ),
    );
  }
}
