import 'package:data/data.dart';
import 'package:domain/domain.dart';

abstract class HiveProvider {
  Future<void> saveUsersToCache(List<UserModel> users);
  Future<List<UserEntity>> getCachedUsers();
}
