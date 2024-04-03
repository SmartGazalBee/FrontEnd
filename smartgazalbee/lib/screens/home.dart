
import 'package:flutter/material.dart';
import 'package:smartgazalbee/models/widgets/banner_widgets/banner_page.dart';
import 'package:smartgazalbee/models/widgets/custom_appbar/custom_appbar_search.dart';
import 'package:smartgazalbee/models/widgets/home_widgets/custom_main_notice_board_widgets.dart';
import 'package:smartgazalbee/models/widgets/home_widgets/custom_user_suggestion_widgets.dart';
import 'package:smartgazalbee/models/widgets/navigation_widgets/navigation_page.dart';

void main() =>runApp(Home());

class Home extends StatelessWidget {

  @override
      Widget build(BuildContext context) {
        return MaterialApp(
          home: Scaffold(
            //bottomNavigationBar: CustomNaviagtion(),
            backgroundColor: Colors.white,
            appBar: CustomAppbarSearch(),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  CustomUserSuggestionWidgets(),
                  CustomMainNoticeBoardWidgets(nameWrite: "신규 게시물",),
                  CustomMainNoticeBoardWidgets(nameWrite: "관심 많은 게시물",),
                  SizedBox(height: 20,),
                  // Container(
                  //   width: double.infinity, height: 130,
                  //     child: CustomBanner()),
                ],
          ),
        ),
      ),
    );
  }
}
