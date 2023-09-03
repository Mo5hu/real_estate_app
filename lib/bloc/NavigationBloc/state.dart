import '../../data/plot_list.dart';

abstract class NavigationState {}

class HomeScreenState extends NavigationState {
  HomeScreenState({required this.plotList});
  PlotList plotList;
}

class LoadingState extends NavigationState {}

class ErrorState extends NavigationState {
  final String errorMessage;
  ErrorState(this.errorMessage);
}
