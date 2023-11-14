import 'dart:io';
import 'package:core/core.dart';
import 'package:data/data.dart';
import 'package:domain/domain.dart';
import 'package:retrofit/retrofit.dart';

class UsersRepositoryImpl implements UsersRepository {
  final UsersApiService _usersApiService;
  final HiveProvider _hiveProvider;

  UsersRepositoryImpl(this._usersApiService, this._hiveProvider);

  @override
  Future<DataState<List<UserEntity>>> getUsersInfo() async {
    final bool haveInternetConnection =
        await InternetConnectionInfo.checkInternetConnection();

    if (haveInternetConnection) {
      try {
        final httpResponse = await _usersApiService.getUsersInfo();

        if (httpResponse.response.statusCode == HttpStatus.ok) {
          final List<UserEntity> result = await _hiveProvider.getCachedUsers();
          return DataSuccess(result);
        } else {
          return DataFailed(
            DioError(
              error: httpResponse.response.statusMessage,
              response: httpResponse.response,
              type: DioErrorType.badResponse,
              requestOptions: httpResponse.response.requestOptions,
            ),
          );
        }
      } on DioError catch (e) {
        return DataFailed(e);
      }
    } else {
      final List<UserEntity> result = await _hiveProvider.getCachedUsers();
      return DataSuccess(result);
    }
  }
}
