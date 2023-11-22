import 'package:core/core.dart';
import 'package:domain/domain.dart';

abstract class MainState extends Equatable {
  final List<UserModel>? listOfUsers;
  final DioError? error;

  const MainState({this.listOfUsers, this.error});

  @override
  List<Object> get props => [listOfUsers!, error!];
}

class UsersLoadingFromNetwork extends MainState {
  const UsersLoadingFromNetwork();
}

class UsersLoadingFromNetworkDone extends MainState {
  const UsersLoadingFromNetworkDone(List<UserModel> user)
      : super(listOfUsers: user);
}

class UsersLoadingFromNetworkError extends MainState {
  const UsersLoadingFromNetworkError(DioError error) : super(error: error);
}
