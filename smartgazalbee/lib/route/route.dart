import 'package:flutter/material.dart';
import 'package:smartgazalbee/screens/comparison.dart';
import 'package:smartgazalbee/screens/home.dart';
import 'package:smartgazalbee/screens/notice_board/notice_board.dart';
import 'package:smartgazalbee/screens/profile.dart';

class Routes {
  Routes._();

  static const String home = '/home';
  static const String comparison = '/comparison';
  static const String noticeBoard = '/noticeBoard';
  static const String profile = '/profile';

  static final routes = <String, WidgetBuilder>{
    home: (BuildContext context) => Home(),
    comparison: (BuildContext context) => Comparison(),
    noticeBoard: (BuildContext context) => NoticeBoard(),
    profile: (BuildContext context) => Profile(),
  };
}