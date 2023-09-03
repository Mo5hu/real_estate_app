import 'package:real_estate_app/data/plot_model.dart';

class PlotList {
  final List<PlotModel> plots;

  PlotList({
    required this.plots,
  });

  factory PlotList.fromJson(Map<String, dynamic> json) {
    List<PlotModel> plotList = [];
    for (var plot in json['plots']) {
      plotList.add(PlotModel.fromJson(plot));
    }
    return PlotList(plots: plotList);
  }
}
