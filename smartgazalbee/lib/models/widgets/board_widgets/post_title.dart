import 'package:flutter/material.dart';
import 'package:smartgazalbee/constants.dart';

class PostTitle extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Text("아이폰 15 Pro ",
        style: TextStyle(
          color: AppColor.text,
          fontFamily: "Pretendard",
          fontWeight: FontWeight.w600,
          fontSize:14,
        ),
      ),
    );
  }
}
