class PlotModel {
  final String id;
  final List<String> images;
  final String price;
  final String bed;
  final String bath;
  final String dimension;
  final String reference;
  final String description;
  final String address;

  PlotModel({
    required this.id,
    required this.images,
    required this.price,
    required this.bed,
    required this.bath,
    required this.dimension,
    required this.reference,
    required this.description,
    required this.address,
  });

  factory PlotModel.fromJson(Map<String, dynamic> json) {
    return PlotModel(
      id: json['id'],
      images: List<String>.from(json['images']),
      price: json['price'],
      bed: json['bed'],
      bath: json['bath'],
      dimension: json['dimension'],
      reference: json['reference'],
      description: json['description'],
      address: json['address'],
    );
  }
}
