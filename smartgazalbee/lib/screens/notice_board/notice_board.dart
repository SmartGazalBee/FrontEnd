import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smartgazalbee/models/widgets/board_widgets/board_post_bar.dart';
import 'package:smartgazalbee/models/widgets/custom_appbar/custom_appbar_search.dart';

void main() =>runApp(NoticeBoard());

class NoticeBoard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: CustomAppbarSearch(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              BoardPostBar(),
              BoardPostBar(),
              BoardPostBar(),
            ],
          ),
        ),
      ),
    );
  }
}
