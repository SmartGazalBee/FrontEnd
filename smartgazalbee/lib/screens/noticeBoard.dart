import 'package:flutter/material.dart';
import 'package:smartgazalbee/models/widgets/board_widgets/board_post_bar.dart';
import 'package:smartgazalbee/models/widgets/custom_appbar/custom_appbar_search.dart';

void main() =>runApp(NoticeBoard());

class NoticeBoard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
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
