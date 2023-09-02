// States
abstract class NavigationState {}

class HomeScreenState extends NavigationState {
  HomeScreenState();
}

class LoadingState extends NavigationState {}

class ErrorState extends NavigationState {
  final String errorMessage;
  ErrorState(this.errorMessage);
}
