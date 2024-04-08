import 'package:flutter/material.dart';
import 'package:smartgazalbee/models/widgets/board_widgets/post_title.dart';
import 'package:smartgazalbee/models/widgets/board_widgets/user_profile_container.dart';
import 'package:smartgazalbee/models/widgets/custom_tag_scrollview.dart';

class BoardPostBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    double sizeWidth = MediaQuery.of(context).size.width;
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(15,5,15,5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            UserProfileContainer(),
            PostTitle(),
            Container(
              width: sizeWidth*0.25,
              child: CustomTagScrollView(total: 10,)),
          ],
        ),
      ),
    );
  }
}
