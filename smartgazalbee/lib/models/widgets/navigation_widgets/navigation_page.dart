// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:smartgazalbee/models/blocs/navigation/naviagtion_bloc.dart';
// import 'package:smartgazalbee/models/blocs/navigation/navigation_event.dart';
// import 'package:smartgazalbee/models/blocs/navigation/navigation_state.dart';
//
//
// void main() {
//   runApp(CustomNaviagtion());
// }
//
// class CustomNaviagtion extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: BlocProvider(
//         create: (context) => NavigationBloc(),
//         child: NavigationPage(),
//       ),
//     );
//   }
// }
//
// class NavigationPage extends StatelessWidget {
//   final List<Widget> _pages = [
//     Center(child: Text('Home Page')),
//     Center(child: Text('Search Page')),
//     Center(child: Text('Profile Page')),
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: BlocBuilder<NavigationBloc, NavigationState>(
//         builder: (context, state) {
//           if (state is NavigationPageLoaded) {
//             return _pages[state.currentIndex];
//           }
//           return Center(child: CircularProgressIndicator());
//         },
//       ),
//       bottomNavigationBar: BlocBuilder<NavigationBloc, NavigationState>(
//         builder: (context, state) {
//           return BottomNavigationBar(
//             currentIndex: state is NavigationPageLoaded ? state.currentIndex : 0,
//             onTap: (index) {
//               BlocProvider.of<NavigationBloc>(context).add(NavigationTabChanged(tabIndex: index));
//             },
//             items: [
//               BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
//               BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
//               BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
//             ],
//           );
//         },
//       ),
//     );
//   }
// }
