import 'package:flutter/material.dart';
import 'package:smartgazalbee/constants.dart';

class CustomTagBlock extends StatelessWidget {
  final double size;
  final String text;

  const CustomTagBlock({
    required this.size, required this.text
  });

  @override
  Widget build(BuildContext context) {

    final screenHeight = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Container(
        alignment: Alignment.center,
        width: size * screenHeight * 0.0055 + text.length,
        height: size * screenHeight * 0.0025,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: AppColor.shadow,
                  blurRadius: 10,
              )],
        ),
        child: Text(
          "${text} ",
          style: TextStyle(
            color: AppColor.text,
            fontFamily: "Pretendard",
            fontWeight: FontWeight.w600,
            fontSize: 8
          ),
        ),
      ),
    );
  }
}
