class GeoModel {
  final String lat;
  final String lng;

  const GeoModel({required this.lat, required this.lng});

  factory GeoModel.fromJson(Map<String, dynamic> json) {
    return GeoModel(
      lat: json["lat"],
      lng: json["lng"],
    );
  }
}
