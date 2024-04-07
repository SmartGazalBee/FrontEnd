abstract class NavigationState {}

class NavigationPageLoaded extends NavigationState {
  final int currentIndex;

  NavigationPageLoaded({required this.currentIndex});
}
