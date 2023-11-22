import 'package:core/core.dart';
import 'package:domain/models/address_model.dart';
import 'package:domain/models/company_model.dart';

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

  @override
  List<Object?> get props {
    return [id, name, username, email, address, phone, website, company];
  }
}
