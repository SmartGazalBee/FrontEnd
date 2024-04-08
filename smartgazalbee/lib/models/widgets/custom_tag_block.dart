import 'package:flutter/material.dart';
import 'package:smartgazalbee/constants.dart';

class CustomTagBlock extends StatelessWidget {
  final double size;
  final String text;
  final double textSize;

  const CustomTagBlock({
    required this.size, required this.text, required this.textSize
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Container(
        alignment: Alignment.center,
        width: size * screenWidth * 0.01 + text.length * 2,
        height: size * screenHeight * 0.0025,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: AppColor.shadow.withOpacity(0.1),
                  blurRadius: 3,
              )],
        ),
        child: Text(
          "${text} ",
          style: TextStyle(
            color: AppColor.text,
            fontFamily: "Pretendard",
            fontWeight: FontWeight.w600,
            fontSize: textSize
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
