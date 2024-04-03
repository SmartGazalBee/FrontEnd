import 'package:flutter/material.dart';
import 'package:smartgazalbee/constants.dart';

class CustomMore extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text("더 보기",
          style: TextStyle(
            color: AppColor.text,
            fontSize: 8,
            fontFamily: "Pretendard",
          ),
        ),
        Icon(Icons.chevron_right,color: AppColor.text,size: 12,)
      ],
    );
  }
}
