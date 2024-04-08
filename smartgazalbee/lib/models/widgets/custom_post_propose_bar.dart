// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smartgazalbee/constants.dart';

class CustomPostProposeBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    double sizeHeight = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: double.infinity,
        height: sizeHeight * 0.055,
        decoration: BoxDecoration(
          border: Border.all(
            width: 1,
            color: AppColor.yellow
          ),
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: AppColor.shadow,
              blurRadius: 10
            ),
          ]
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(width: 20,),
              Text("제안서 작성하기",
                style: TextStyle(
                  color: AppColor.text,
                  fontSize: 16,
                  fontFamily: "Pretendard",
                  fontWeight: FontWeight.w100,
                  letterSpacing: 2
                ),
                textAlign: TextAlign.center,
              ),
              SvgPicture.asset("assets/icons/send.svg",color: AppColor.yellow,)
            ],
          ),
        ),
      ),
    );
  }
}
