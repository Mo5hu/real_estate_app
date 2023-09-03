import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:real_estate_app/constants/app_colors.dart';
import 'package:real_estate_app/constants/constants.dart';
import 'package:real_estate_app/data/plot_list.dart';
import 'package:real_estate_app/data/plot_model.dart';
import 'package:real_estate_app/widgets/bottom_sheet_row.dart';

class BottomSheetContent extends StatelessWidget {
  const BottomSheetContent({super.key, required this.plotList});
  final PlotList plotList;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SvgPicture.asset(
              'assets/rectangle_bar.svg',
              width: 50,
              height: 8,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                  text: TextSpan(
                    style: DefaultTextStyle.of(context).style,
                    children: [
                      TextSpan(
                          text: 'Showing ',
                          style: Theme.of(context).textTheme.bodyMedium),
                      TextSpan(
                          text: plotList.plots.length.toString(),
                          style: Theme.of(context).textTheme.labelLarge),
                      TextSpan(
                          text: ' Units', // Add ' Units' after '30'
                          style: Theme.of(context).textTheme.bodyMedium),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Container(
                      height: buttonHeigth,
                      width: buttonWidth,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black26, // Border color
                          width: 1, // Border width
                        ),
                        borderRadius: BorderRadius.circular(10),
                        color: AppColors.buttonBackgroundColor,
                      ),
                      child: InkWell(
                        child: Center(
                          child: SvgPicture.asset(
                            'assets/Iconupdown.svg',
                            width: iconSize - 8,
                            height: iconSize - 8,
                          ),
                        ),
                        onTap: () {},
                      ),
                    ),
                    const SizedBox(width: 5),
                    Container(
                      height: buttonHeigth,
                      width: buttonWidth,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black26, // Border color
                          width: 1, // Border width
                        ),
                        borderRadius: BorderRadius.circular(10),
                        color: AppColors.buttonBackgroundColor,
                      ),
                      child: InkWell(
                        child: Center(
                          child: SvgPicture.asset(
                            'assets/Solidsort.svg',
                            width: iconSize - 8,
                            height: iconSize - 8,
                          ),
                        ),
                        onTap: () {},
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Divider(),
          SizedBox(
            height: 420,
            child: ListView.builder(
                itemCount: plotList.plots.length,
                itemBuilder: (context, index) {
                  PlotModel plot = plotList.plots[index];
                  return BottomSheetRow(
                      imageUrls: plot.images,
                      price: plot.price,
                      description: plot.description,
                      address: plot.address,
                      bed: plot.bed,
                      bath: plot.bath,
                      dimension: plot.dimension,
                      reference: plot.reference);
                }),
          )
        ],
      ),
    );
  }
}
