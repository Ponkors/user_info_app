import 'package:core/core.dart';
import 'package:domain/domain.dart';

class GetUsersUseCase implements UseCase<DataState<List<UserModel>>, void> {
  final UsersRepository _usersRepository;

  GetUsersUseCase(this._usersRepository);

  @override
  Future<DataState<List<UserModel>>> call({void params}) {
    return _usersRepository.getUsersInfo();
  }
}
