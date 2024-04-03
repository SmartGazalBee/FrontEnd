import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smartgazalbee/constants.dart';
import 'package:smartgazalbee/models/widgets/custom_search_provider_post.dart';

class CustomAppbarSearch extends StatelessWidget implements PreferredSizeWidget {

  @override
  Widget build(BuildContext context) {

    return AppBar(
      backgroundColor: Colors.white,
      elevation: 10,
      shadowColor: AppColor.shadow.withOpacity(0.2),
      leading: IconButton(onPressed: () {
        },
            icon:SvgPicture.asset("assets/icons/mainIcon.svg")),
      actions: [
        IconButton(onPressed: (){
        },
          icon: SvgPicture.asset("assets/icons/alarm.svg"))
      ],
      title: CustomSearchProviderPost(hint: '원하시는 정보를 입력하세요.', funValidator: null),
    );
  }
  @override
  Size get preferredSize => Size.fromHeight(44);
}
