class AddressModel {
  final String street;
  final String suite;
  final String city;
  final String zipcode;
  // final GeoModel geo;

  const AddressModel({
    this.street = '',
    this.suite = '',
    required this.city,
    this.zipcode = '',
    // this.geo,
  });

  factory AddressModel.fromJson(Map<String, dynamic> json) {
    return AddressModel(
      street: json["street"],
      suite: json["suite"],
      city: json["city"],
      zipcode: json["zipcode"],
      // geo: GeoModel.fromJson(json["geo"]),
    );
  }
}
