// // banner_bloc.dart
// import 'dart:async';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'banner_event.dart';
// import 'banner_state.dart';
//
// class BannerBloc extends Bloc<BannerEvent, BannerState> {
//   Timer? _timer;
//
//   BannerBloc() : super(BannerInitial()) {
//     on<BannerStarted>(_onStarted);
//     on<BannerNext>(_onNext);
//   }
//
//   void _onStarted(BannerStarted event, Emitter<BannerState> emit) {
//     _timer?.cancel();
//     _timer = Timer.periodic(Duration(seconds: 3), (timer) {
//       add(BannerNext());
//     });
//     emit(BannerLoadSuccess(banners: ['Ad 1', 'Ad 2', 'Ad 3']));
//   }
//
//   void _onNext(BannerNext event, Emitter<BannerState> emit) {
//     final state = this.state;
//     if (state is BannerLoadSuccess) {
//       final nextIndex = (state.currentIndex + 1) % state.banners.length;
//       emit(BannerLoadSuccess(banners: state.banners, currentIndex: nextIndex));
//     }
//   }
//
//   @override
//   Future<void> close() {
//     _timer?.cancel();
//     return super.close();
//   }
// }
