import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:real_estate_app/bloc/NavigationBloc/bloc.dart';
import 'package:real_estate_app/bloc/NavigationBloc/state.dart';
import 'package:real_estate_app/widgets/get_main_screens.dart';

class HydratedApp extends StatelessWidget {
  const HydratedApp({super.key});

  @override
  Widget build(BuildContext context) {
    // final navigationBloc = BlocProvider.of<NavigationBloc>(context);
    return BlocBuilder<NavigationBloc, NavigationState>(
        builder: (context, state) {
      return Scaffold(body: getMainScreens(state));
    });
  }
}
