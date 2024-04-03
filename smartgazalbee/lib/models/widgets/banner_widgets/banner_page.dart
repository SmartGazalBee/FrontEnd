// import 'dart:async';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:smartgazalbee/models/blocs/banner/banner_bloc.dart';
// import 'package:smartgazalbee/models/blocs/banner/banner_event.dart';
// import 'package:smartgazalbee/models/blocs/banner/banner_state.dart';
//
// class CustomBanner extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: BlocProvider(
//         create: (context) => BannerBloc()..add(BannerStarted()),
//         child: BannerView(),
//       ),
//     );
//   }
// }
//
// class BannerView extends StatefulWidget {
//   @override
//   _BannerViewState createState() => _BannerViewState();
// }
//
// class _BannerViewState extends State<BannerView> {
//   final PageController _pageController = PageController();
//   Timer? _timer;
//
//   @override
//   void initState() {
//     super.initState();
//     _startAutoScroll();
//   }
//
//   void _startAutoScroll() {
//     _timer?.cancel();
//     _timer = Timer.periodic(Duration(seconds: 3), (_) {
//       if (_pageController.hasClients) {
//         int nextPage = _pageController.page!.round() + 1;
//         if (nextPage >= 3) { // 광고 개수에 따라 조정
//           nextPage = 0;
//         }
//         _pageController.animateToPage(nextPage,
//             duration: Duration(milliseconds: 300), curve: Curves.easeInOut);
//       }
//     });
//   }
//
//   @override
//   void dispose() {
//     _timer?.cancel();
//     _pageController.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: BlocBuilder<BannerBloc, BannerState>(
//         builder: (context, state) {
//           if (state is BannerLoadSuccess) {
//             return PageView.builder(
//               controller: _pageController,
//               itemCount: state.banners.length,
//               itemBuilder: (context, index) {
//                 return Container(
//                   color: Colors.yellow,
//                   alignment: Alignment.center,
//                   child: Text(
//                     state.banners[index],
//                     style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//                   ),
//                 );
//               },
//             );
//           }
//           return Center(child: CircularProgressIndicator());
//         },
//       ),
//     );
//   }
// }
