import 'package:flutter/material.dart';
import 'package:real_estate_app/data/plot_list.dart';

import 'bottom_sheet_content.dart';

class PlotButton extends StatelessWidget {
  const PlotButton({super.key, required this.id, required this.plotList});
  final String id;
  final PlotList plotList;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showModalBottomSheet(
          context: context,
          builder: (BuildContext context) {
            return BottomSheetContent(plotList: plotList);
          },
        );
        // Handle button press
      },
      child: Container(
        height: 35,
        width: 40,
        color: Colors.transparent,
      ),
    );
  }
}
