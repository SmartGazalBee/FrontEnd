import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smartgazalbee/constants.dart';
import 'package:smartgazalbee/models/widgets/board_widgets/user_profile_container.dart';

class CustomPostBlock extends StatelessWidget {
  final String text;

  const CustomPostBlock({required this.text});

  @override
  Widget build(BuildContext context) {
    double sizeHeight = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.fromLTRB(10,0,10,0),
      child: Container(
        constraints: BoxConstraints( // 최소 최대크기
          maxHeight: sizeHeight * 0.3,
          minHeight: sizeHeight * 0.1 + 50,
        ),
        width: double.infinity,
        height: sizeHeight * 0.1 + text.length * 0.7,
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
        child: Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    UserProfileContainer(),
                    IconButton(onPressed: () { },icon: SvgPicture.asset("assets/icons/setting.svg"),),
                  ],
                ),
                SizedBox(height: 15,),
                Text(text,
                  style: TextStyle(
                    color: AppColor.text,
                    fontSize: 14,
                    fontFamily: "Pretendard",
                    fontWeight: FontWeight.w500,
                    letterSpacing: 1,
                  ),
                  overflow: TextOverflow.visible,
                ),
              ],
            ),
        ),
        ),
    );
  }
}
