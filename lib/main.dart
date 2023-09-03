import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:real_estate_app/bloc/NavigationBloc/bloc.dart';
import 'package:real_estate_app/constants/app_colors.dart';
import 'package:real_estate_app/screens/hydrated_app.dart';
import 'package:real_estate_app/styles/text_styles.dart';

void main() {
  final navigationBloc = NavigationBloc();

  runApp(MyApp(navigationBloc));
}

class MyApp extends StatelessWidget {
  final NavigationBloc navigationBloc;

  const MyApp(this.navigationBloc, {super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Find Real Estate',
      theme: ThemeData(
          primarySwatch: AppColors.primaryColor,
          cardColor: AppColors.accentColor,
          textTheme: const TextTheme(
            displayLarge: AppTextStyles.heading1,
            displayMedium: AppTextStyles.heading2,
            bodyLarge: AppTextStyles.bodyBold,
            bodyMedium: AppTextStyles.bodyRegular,
            bodySmall: AppTextStyles.bodySmall,
          )),
      initialRoute: '/',
      routes: {
        '/': (context) => BlocProvider.value(
              value: navigationBloc,
              child: const HydratedApp(),
            ),
      },
    );
  }
}
