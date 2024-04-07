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
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: AppColor.shadow,
              blurRadius: 10,
            )
          ]
        ),
        child: BlocBuilder<NavigationBloc, NavigationState>(
          builder: (context, state) {
            return BottomNavigationBar(
              currentIndex: state is NavigationPageLoaded ? state.currentIndex : 0,
              onTap: (index) {
                BlocProvider.of<NavigationBloc>(context).add(NavigationTabChanged(tabIndex: index));
              },
              selectedItemColor: AppColor.greyText,
              selectedLabelStyle: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 10,
                fontFamily: 'Pretendard',
              ),
              unselectedItemColor: AppColor.greyText,
              unselectedLabelStyle: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 10,
                fontFamily: 'Pretendard',
              ),
              selectedIconTheme: IconThemeData(size: 24),
              unselectedIconTheme: IconThemeData(size: 24),
              showUnselectedLabels: true,
              items: [
                BottomNavigationBarItem(icon: Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: SvgPicture.asset("assets/icons/home.svg"),
                ), label: '홈'),
                BottomNavigationBarItem(icon: Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: SvgPicture.asset("assets/icons/noticeBoard.svg"),
                ), label: '게시판'),
                BottomNavigationBarItem(icon: Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: SvgPicture.asset("assets/icons/gazalbee.svg"),
                ), label: '비교하기'),
                BottomNavigationBarItem(icon: Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: SvgPicture.asset("assets/icons/myPage.svg"),
                ), label: '프로필'),
              ],
            );
          },
        ),
      ),
    );
  }
}
