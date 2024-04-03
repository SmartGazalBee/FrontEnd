import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:smartgazalbee/constants.dart'; // GetX 라이브러리 import

class CustomAppbarTitle extends StatelessWidget implements PreferredSizeWidget {
  final String titleWrite;
  final bool backButton;

  const CustomAppbarTitle({
    required this.titleWrite,
    this.backButton = false,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 10,
      shadowColor: AppColor.shadow.withOpacity(0.1),
      centerTitle: true,
      leading: backButton ? IconButton(
        icon: Icon(Icons.chevron_left, color: AppColor.text),
        onPressed: () => Get.back(), // GetX의 back 메서드를 사용하여 뒤로 가기
      ) : null,
      actions: [
        IconButton(onPressed: (){}, icon: SvgPicture.asset("assets/icon/alarm.svg"))
      ],
      title: Padding(
        padding: EdgeInsets.only(top: 5),
        child: Text(
          titleWrite,
          style: TextStyle(
            color: AppColor.text,
            fontFamily: 'Pretendard',
            fontWeight: FontWeight.w600,
            fontSize: 16,
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(44);
}
