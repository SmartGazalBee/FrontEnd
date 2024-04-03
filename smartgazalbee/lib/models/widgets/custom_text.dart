import 'package:flutter/material.dart';
import 'package:smartgazalbee/constants.dart';

class CustomText extends StatelessWidget {
  final String titleWrite;
  final double titleSize;

  const CustomText({
    required this.titleWrite,
    required this.titleSize,
  });

  @override
  Widget build(BuildContext context) {
    return Text(titleWrite,
      style: TextStyle(
          fontSize: titleSize,
          fontFamily: "Pretendard",
          color: AppColor.text
      ),
    );
  }
}
