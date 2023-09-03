import 'package:flutter/material.dart';
import 'package:real_estate_app/bloc/NavigationBloc/state.dart';
import 'package:real_estate_app/screens/home_screen.dart';

import 'loading_screen.dart';

Widget getMainScreens(NavigationState state) {
  if (state is HomeScreenState) {
    return HomeScreen(plotList: state.plotList);
  } else if (state is LoadingState) {
    return const LoadingScreen();
  } else {
    // Add more screens above
    return const Center(child: Text('Unknown State'));
  }
}
