import 'package:flutter/material.dart';
import 'package:smartgazalbee/models/widgets/board_widgets/post_title.dart';
import 'package:smartgazalbee/models/widgets/board_widgets/user_profile_container.dart';
import 'package:smartgazalbee/models/widgets/custom_tag_scrollview.dart';

class BoardPostBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15,5,15,5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          UserProfileContainer(),
          PostTitle(),
          CustomTagScrollView(total: 10,),
        ],
      ),
    );
  }
}
