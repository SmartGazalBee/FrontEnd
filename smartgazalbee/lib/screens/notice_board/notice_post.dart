import 'package:flutter/material.dart';
import 'package:smartgazalbee/models/widgets/custom_appbar/custom_appbar_title.dart';
import 'package:smartgazalbee/models/widgets/custom_post_propose_bar.dart';
import 'package:smartgazalbee/models/widgets/custom_tag_scrollview.dart';
import 'package:smartgazalbee/models/widgets/custom_post_block.dart';

void main() => runApp(NoticePost());

class NoticePost extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: CustomAppbarTitle(titleWrite: "SK 아이폰15Pro 실버 256GB",backButton: true),
        body: SingleChildScrollView(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomTagScrollView(total: 14,),
                CustomPostBlock(text: "데이터를 다쓰고도",),
                CustomPostProposeBar()
              ]
          )
        ),
      ),
    );
  }
}
