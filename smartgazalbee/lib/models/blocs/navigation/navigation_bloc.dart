import 'package:flutter_bloc/flutter_bloc.dart';
import 'navigation_event.dart';
import 'navigation_state.dart';

class NavigationBloc extends Bloc<NavigationEvent, NavigationState> {
  NavigationBloc() : super(NavigationPageLoaded(currentIndex: 0)) {
    on<NavigationTabChanged>((event, emit) {
      emit(NavigationPageLoaded(currentIndex: event.tabIndex));
    });
  }
}
