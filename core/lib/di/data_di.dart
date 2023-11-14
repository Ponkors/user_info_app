import 'package:core/core.dart';
import 'package:data/data.dart';
import 'package:domain/domain.dart';
import 'package:get_it/get_it.dart';
import 'package:main/main.dart';

final GetIt getIt = GetIt.instance;
final DataDI dataDI = DataDI();

class DataDI {
  Future<void> initDependencies() async {
    getIt.registerSingleton<Dio>(Dio());
    getIt.registerSingleton<UsersApiService>(UsersApiService(getIt()));
    getIt.registerSingleton<HiveProvider>(HiveProvider(getIt()));
    getIt.registerSingleton<UsersRepository>(
        UsersRepositoryImpl(getIt(), getIt()));
    getIt.registerSingleton<GetUsersUseCase>(GetUsersUseCase(getIt()));
    getIt.registerFactory<MainBloc>(() => MainBloc(getIt()));

    Future<void> _initHive() async {
      await Hive.initFlutter();
      Hive.registerAdapter(
        getIt.get<UserEntityAdapter>(),
      );
    }

    void _initHiveAdapter() {
      getIt.registerLazySingleton<UserEntityAdapter>(
        () => UserEntityAdapter(),
      );
    }

    _initHive();
  }
}
