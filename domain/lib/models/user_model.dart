import 'package:core/core.dart';
import 'package:data/data.dart';

class UserModel extends Equatable {
  final int? id;
  final String? name;
  final String? username;
  final String? email;
  final AddressModel? address;
  final String? phone;
  final String? website;
  final CompanyModel? company;

  const UserModel({
    this.id,
    this.name,
    this.username,
    this.email,
    this.address,
    this.phone,
    this.website,
    this.company,
  });

  UserModel.fromUserEntity(UserEntity userEntity)
      : id = userEntity.id,
        name = userEntity.name,
        username = userEntity.username,
        email = userEntity.email,
        phone = userEntity.phone,
        website = userEntity.website,
        address = userEntity.address,
        company = userEntity.company;

  @override
  List<Object?> get props {
    return [id, name, username, email, address, phone, website, company];
  }
}

class AddressModel {
  final String street;
  final String suite;
  final String city;
  final String zipcode;
  final GeoModel geo;

  const AddressModel({
    required this.street,
    required this.suite,
    required this.city,
    required this.zipcode,
    required this.geo,
  });

  factory AddressModel.fromJson(Map<String, dynamic> json) {
    return AddressModel(
      street: json["street"],
      suite: json["suite"],
      city: json["city"],
      zipcode: json["zipcode"],
      geo: GeoModel.fromJson(json["geo"]),
    );
  }
}

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

class CompanyModel {
  final String name;
  final String catchPhrase;
  final String bs;

  const CompanyModel({
    required this.name,
    required this.catchPhrase,
    required this.bs,
  });

  factory CompanyModel.fromJson(Map<String, dynamic> json) {
    return CompanyModel(
      name: json["name"],
      catchPhrase: json["catchPhrase"],
      bs: json["bs"],
    );
  }
}
