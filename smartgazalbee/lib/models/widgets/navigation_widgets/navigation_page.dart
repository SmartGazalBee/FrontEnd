// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smartgazalbee/constants.dart';
import 'package:smartgazalbee/models/blocs/navigation/navigation_bloc.dart';
import 'package:smartgazalbee/models/blocs/navigation/navigation_event.dart';
import 'package:smartgazalbee/models/blocs/navigation/navigation_state.dart';
import 'package:smartgazalbee/screens/comparison.dart';
import 'package:smartgazalbee/screens/home.dart';
import 'package:smartgazalbee/screens/notice_board/notice_board.dart';
import 'package:smartgazalbee/screens/profile.dart';


void main() {
  runApp(CustomNavigation());
}

class CustomNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: BlocProvider(
        create: (context) => NavigationBloc(),
        child: NavigationPage(),
      ),
    );
  }
}

class NavigationPage extends StatelessWidget {
  final List<Widget> _pages = [
    Home(),
    NoticeBoard(),
    Comparison(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<NavigationBloc, NavigationState>(
        builder: (context, state) {
          if (state is NavigationPageLoaded) {
            return _pages[state.currentIndex];
          }
          return Center(child: CircularProgressIndicator());
        },
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(boxShadow: [BoxShadow(color: AppColor.shadow, blurRadius: 10)]),
        child: BlocBuilder<NavigationBloc, NavigationState>(
          builder: (context, state) {
            int currentIndex = state is NavigationPageLoaded ? state.currentIndex : 0;

            return BottomNavigationBar(
              currentIndex: currentIndex,
              onTap: (index) {
                BlocProvider.of<NavigationBloc>(context).add(NavigationTabChanged(tabIndex: index));
              },
              selectedItemColor: AppColor.yellow,
              selectedLabelStyle: TextStyle(fontWeight: FontWeight.normal, fontSize: 10, fontFamily: 'Pretendard'),
              unselectedItemColor: AppColor.greyText,
              unselectedLabelStyle: TextStyle(fontWeight: FontWeight.normal, fontSize: 10, fontFamily: 'Pretendard'),
              selectedIconTheme: IconThemeData(size: 24),
              unselectedIconTheme: IconThemeData(size: 24),
              showUnselectedLabels: true,
              items: _buildNavigationItems(currentIndex),
            );
          },
        ),
      ),
    );
  }

  List<BottomNavigationBarItem> _buildNavigationItems(int currentIndex) {
    const icons = [
      "assets/icons/home.svg",
      "assets/icons/noticeBoard.svg",
      "assets/icons/gazalbee.svg",
      "assets/icons/myPage.svg",
    ];
    const labels = ["홈", "게시판", "비교하기", "프로필"];

    return List.generate(icons.length, (index) {
      return BottomNavigationBarItem(
        icon: Padding(
          padding: const EdgeInsets.all(3.0),
          child: SvgPicture.asset(
            icons[index],
            color: currentIndex == index ? AppColor.yellow : AppColor.greyText,
          ),
        ),
        label: labels[index],
      );
    });
  }
}
