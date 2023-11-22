import 'package:core/core.dart';
import 'package:data/data.dart';
import 'package:domain/domain.dart';
import 'package:main/main.dart';

final GetIt getIt = GetIt.instance;
final DataDI dataDI = DataDI();

class DataDI {
  Future<void> initDependencies() async {
    _initApiService();
    await _initHiveDataBase();
    _initUsers();
  }

  void _initApiService() {
    getIt.registerSingleton<Dio>(Dio());
    getIt.registerSingleton<UsersApiService>(UsersApiService(getIt()));
  }

  Future<void> _initHiveDataBase() async {
    await Hive.initFlutter();
    getIt.registerLazySingleton<HiveProvider>(
      () => HiveProviderImpl(),
    );
    getIt.registerLazySingleton<UserEntityAdapter>(
      () => UserEntityAdapter(),
    );
    Hive.registerAdapter(
      getIt.get<UserEntityAdapter>(),
    );
  }

  _initUsers() {
    getIt.registerSingleton<UsersRepository>(
        UsersRepositoryImpl(getIt(), getIt()));
    getIt.registerSingleton<GetUsersUseCase>(GetUsersUseCase(getIt()));
    getIt.registerFactory<MainBloc>(() => MainBloc(getIt()));
  }
}
