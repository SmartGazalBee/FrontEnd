abstract class NavigationEvent {}

class NavigationTabChanged extends NavigationEvent {
  final int tabIndex;

  NavigationTabChanged({required this.tabIndex});
}
