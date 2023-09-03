import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:flutter/services.dart';
import 'package:real_estate_app/bloc/NavigationBloc/event.dart';
import 'package:real_estate_app/bloc/NavigationBloc/state.dart';

import '../../data/plot_list.dart';

class NavigationBloc extends Bloc<NavigationEvent, NavigationState> {
  NavigationBloc() : super(LoadingState()) {
    on<NavigationEvent>((event, emit) async {
      if (event is LoadDataEvent) {
        print('debugging: To Loading');
        // emit(LoadingState());
        String jsonData = await rootBundle.loadString('assets/data/plots.json');
        Map<String, dynamic> jsonMap = json.decode(jsonData);
        PlotList plotList = PlotList.fromJson(jsonMap);
        emit(HomeScreenState(plotList: plotList));
      }
    });
    add(LoadDataEvent());
  }
}
