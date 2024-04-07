import 'package:flutter/material.dart';
import 'package:smartgazalbee/constants.dart';

class PostTitle extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    double sizeWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: SizedBox(
        width: sizeWidth * 0.4,
        child: Text("아이폰 15 Pro max일까요 저는 잘 모르겠네요 허허허",
          style: TextStyle(
            color: AppColor.text,
            fontFamily: "Pretendard",
            fontWeight: FontWeight.w600,
            fontSize:14,
          ),
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }
}
