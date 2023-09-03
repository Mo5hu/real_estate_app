import 'package:flutter/material.dart';
import 'package:real_estate_app/data/plot_list.dart';

import '../widgets/overlay.dart';
import '../widgets/plot_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, required this.plotList});
  final PlotList plotList;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/background.png',
        ),
        OverlayWidget(plotList: plotList),
        Positioned(
            top: 255,
            left: 140,
            child: PlotButton(id: '74', plotList: plotList)),
        Positioned(
            top: 215,
            left: 140,
            child: PlotButton(id: '75', plotList: plotList)),
        Positioned(
            top: 215,
            left: 80,
            child: PlotButton(id: '76', plotList: plotList)),
        Positioned(
            top: 255,
            left: 80,
            child: PlotButton(id: '77', plotList: plotList)),
      ],
    );
  }
}
