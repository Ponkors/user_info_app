import 'dart:io';
import 'package:core/core.dart';
import 'package:data/data.dart';
import 'package:domain/domain.dart';
import 'package:retrofit/retrofit.dart';

class UsersRepositoryImpl implements UsersRepository {
  final UsersApiService _usersApiService;

  UsersRepositoryImpl(this._usersApiService);

  @override
  Future<DataState<List<UserEntity>>> getUsersInfo() async {
    try {
      final httpResponse = await _usersApiService.getUsersInfo();

      if (httpResponse.response.statusCode == HttpStatus.ok) {
        return DataSuccess(httpResponse.data);
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
  }
}
