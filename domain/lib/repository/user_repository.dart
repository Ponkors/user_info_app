import 'package:core/core.dart';
import 'package:domain/models/user_model.dart';

abstract class UsersRepository {
  Future<DataState<List<UserModel>>> getUsersInfo();
}