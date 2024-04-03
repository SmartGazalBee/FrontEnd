import 'package:flutter/material.dart';
import 'package:smartgazalbee/models/widgets/board_widgets/post_title.dart';
import 'package:smartgazalbee/models/widgets/board_widgets/user_profile_container.dart';
import 'package:smartgazalbee/models/widgets/custom_tag_block.dart';

class BoardPostBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          UserProfileContainer(),
          PostTitle(),
          Row(
            children: [
              CustomTagBlock(size: 10, text: "SK 통신사",),
              CustomTagBlock(size: 10, text: "실버 256GB",),
              CustomTagBlock(size: 10, text: "34 요금제",)
            ],
          ),
        ],
      ),
    );
  }
}
