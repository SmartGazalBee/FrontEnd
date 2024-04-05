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

    final screenHeight = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Container(
        alignment: Alignment.center,
        width: size * screenHeight * 0.005 + text.length * 1.3,
        height: size * screenHeight * 0.002,
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
            fontSize: textSize
          ),
        ),
      ),
    );
  }
}
