import 'package:flutter/material.dart';
import 'package:smartgazalbee/constants.dart';

class CustomContainer extends StatelessWidget {
  final double SizeWidth;
  final double SizeHeight;

  const CustomContainer({
    required this.SizeWidth,
    required this.SizeHeight,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        width: SizeWidth,
        height: SizeHeight,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: AppColor.shadow,
                blurRadius: 10,
            )
          ]
        ),
      ),
    );
  }
}
