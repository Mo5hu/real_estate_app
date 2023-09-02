import 'package:bloc/bloc.dart';
import 'package:real_estate_app/bloc/NavigationBloc/event.dart';
import 'package:real_estate_app/bloc/NavigationBloc/state.dart';

class NavigationBloc extends Bloc<NavigationEvent, NavigationState> {
  NavigationBloc() : super(LoadingState()) {
    on<NavigationEvent>((event, emit) async {
      if (event is LoadDataEvent) {
        print('debugging: To Loading');
        emit(LoadingState());
      }
    });
    add(NavigateToHomeEvent());
  }
}
