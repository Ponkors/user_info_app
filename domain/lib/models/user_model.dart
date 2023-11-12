import 'package:core/core.dart';

class UserModel extends Equatable {
  final int? id;
  final String? name;
  final String? username;
  final String? email;
  // final AddressModel address;
  final String? phone;
  final String? website;
  // final CompanyModel company;

  const UserModel({
    this.id,
    this.name,
    this.username,
    this.email,
    // required this.address,
    this.phone,
    this.website,
    // required this.company,
  });

  @override
  List<Object?> get props {
    return [
      id,
      name,
      username,
      email,
      phone,
      website
    ];
  }
}

// // address_model.dart
// class AddressModel {
//   final String street;
//   final String suite;
//   final String city;
//   final String zipcode;
//   final GeoModel geo;
//
//   AddressModel({
//     required this.street,
//     required this.suite,
//     required this.city,
//     required this.zipcode,
//     required this.geo,
//   });
// }
//
// // geo_model.dart
// class GeoModel {
//   final String lat;
//   final String lng;
//
//   GeoModel({
//     required this.lat,
//     required this.lng,
//   });
// }
//
// // company_model.dart
// class CompanyModel {
//   final String name;
//   final String catchPhrase;
//   final String bs;
//
//   CompanyModel({
//     required this.name,
//     required this.catchPhrase,
//     required this.bs,
//   });
// }
