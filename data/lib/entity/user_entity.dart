import 'package:core/core.dart';
import 'package:domain/domain.dart';

class UserEntity extends UserModel {
  const UserEntity({
    int ? id,
    String ? name,
    String ? username,
    String ? email,
    // AddressModel address;
    String ? phone,
    String ? website,
    // final CompanyModel company;
  });

  factory UserEntity.fromJson(Map<String, dynamic> map) {
    return UserEntity(
      id: map['id'] ?? "",
      name: map['name'] ?? "",
      username: map['username'] ?? "",
      email: map['email'] ?? "",
      // address: map['address'] != null
      //     ? Address.fromJson(map['address'] as Map<String, dynamic>)
      //     : null,
      phone: map['phone'] ?? "",
      website: map['website'] ?? "",
      // company: map['company'] != null
      //     ? Company.fromJson(map['company'] as Map<String, dynamic>)
      //     : null,
    );
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
