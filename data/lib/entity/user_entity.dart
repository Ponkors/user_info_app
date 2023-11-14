import 'package:core/core.dart';
import 'package:domain/domain.dart';

class UserEntity extends UserModel {
  const UserEntity({
    int? id,
    String? name,
    String? username,
    String? email,
    AddressModel? address,
    String? phone,
    String? website,
    CompanyModel? company,
  }) : super(
            id: id,
            name: name,
            username: username,
            email: email,
            phone: phone,
            website: website,
            address: address,
            company: company);

  factory UserEntity.fromJson(Map<String, dynamic> map) {
    return UserEntity(
      id: map['id'] ?? "",
      name: map['name'] ?? "",
      username: map['username'] ?? "",
      email: map['email'] ?? "",
      address: map['address'] != null
          ? AddressModel.fromJson(map['address'] as Map<String, dynamic>)
          : null,
      phone: map['phone'] ?? "",
      website: map['website'] ?? "",
      company: map['company'] != null
          ? CompanyModel.fromJson(map['company'] as Map<String, dynamic>)
          : null,
    );
  }
}
