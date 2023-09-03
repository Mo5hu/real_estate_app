import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:real_estate_app/constants/app_colors.dart';
import 'package:real_estate_app/constants/constants.dart';
import 'package:real_estate_app/data/plot_list.dart';
import 'package:real_estate_app/widgets/bottom_sheet_content.dart';

class OverlayWidget extends StatelessWidget {
  OverlayWidget({super.key, required this.plotList});
  final PlotList plotList;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(28),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: buttonHeigth,
                  width: buttonWidth,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColors.buttonBackgroundColor,
                  ),
                  child: InkWell(
                    child: SvgPicture.asset(
                      'assets/left.svg',
                      width: iconSize,
                      height: iconSize,
                    ),
                    onTap: () {},
                  ),
                ),
                const SizedBox(
                  width: 70,
                ),
                Expanded(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: buttonHeigth,
                        width: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: AppColors.buttonBackgroundColor,
                        ),
                        child: InkWell(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                'Units List',
                                style: Theme.of(context).textTheme.labelLarge,
                              ),
                              SvgPicture.asset(
                                'assets/down.svg',
                                width: iconSize,
                                height: iconSize,
                              ),
                            ],
                          ),
                          onTap: () {
                            showModalBottomSheet(
                              context: context,
                              builder: (BuildContext context) {
                                return BottomSheetContent(
                                  plotList: plotList,
                                );
                              },
                            );
                          },
                        ),
                      ),
                      Container(
                        height: buttonHeigth,
                        width: buttonWidth,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: AppColors.buttonBackgroundColor,
                        ),
                        child: InkWell(
                          child: Center(
                            child: SvgPicture.asset(
                              'assets/filterSetting.svg',
                              width: iconSize,
                              height: iconSize,
                            ),
                          ),
                          onTap: () {},
                        ),
                      ),
                      Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: AppColors.buttonBackgroundColor,
                        ),
                        child: InkWell(
                          child: Center(
                            child: SvgPicture.asset(
                              'assets/Group-Logo.svg',
                              width: 60,
                              height: 60,
                            ),
                          ),
                          onTap: () {},
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              width: 220,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColors.buttonBackgroundColor,
              ),
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 15,
                        width: 15,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: AppColors.ReservedPlotColor),
                      ),
                      const SizedBox(width: 5),
                      Text(
                        'Reserved',
                        style: Theme.of(context).textTheme.labelLarge,
                      ),
                    ],
                  ),
                  const SizedBox(width: 10),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 15,
                        width: 15,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: AppColors.AvailablePlotColor),
                      ),
                      const SizedBox(width: 5),
                      Text(
                        'Available',
                        style: Theme.of(context).textTheme.labelLarge,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
