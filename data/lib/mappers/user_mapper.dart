import 'package:data/data.dart';
import 'package:domain/domain.dart';

abstract class UserMapper {
  static UserEntity toEntity(UserModel model) {
    return UserEntity(
      id: model.id,
      name: model.name,
      username: model.username,
      email: model.email,
      address: model.address,
      phone: model.phone,
      website: model.website,
      company: model.company,
    );
  }

  static UserModel toModel(UserEntity entity) {
    return UserModel(
      id: entity.id,
      name: entity.name,
      username: entity.username,
      email: entity.email,
      address: entity.address,
      phone: entity.phone,
      website: entity.website,
      company: entity.company,
    );
  }
}
