import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smartgazalbee/models/widgets/board_widgets/post_title.dart';
import 'package:smartgazalbee/models/widgets/board_widgets/user_profile_container.dart';
import 'package:smartgazalbee/models/widgets/custom_tag_scrollview.dart';
import 'package:smartgazalbee/screens/notice_board/notice_post.dart';

class BoardPostBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double sizeWidth = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: () {
        Get.to(() => NoticePost());
      },
      child: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15, 5, 15, 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              UserProfileContainer(),
              PostTitle(),
              Container(
                width: sizeWidth * 0.2,
                child: CustomTagScrollView(total: 10),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
