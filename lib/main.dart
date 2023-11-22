import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:main/main.dart';
import 'package:navigation/navigation.dart';

Future<void> main() async {
  await dataDI.initDependencies();
  appDI.initDependencies();
  final _appRouter = AppRouter();
  runApp(MyApp(appRouter: _appRouter));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key, required this.appRouter}) : super(key: key);
  final AppRouter appRouter;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<MainBloc>(
      create: (context) => getIt()..add(const GetUsersInfo()),
      child: MaterialApp.router(
        routerDelegate: getIt.get<AppRouter>().delegate(),
        debugShowCheckedModeBanner: false,
        routeInformationParser: getIt.get<AppRouter>().defaultRouteParser(),
      ),
    );
  }
}


/*

import 'package:core/core.dart';
import 'package:data/data.dart';
import 'package:domain/domain.dart';
import 'package:main/main.dart';

final GetIt getIt = GetIt.instance;
final DataDI dataDI = DataDI();

class DataDI {
  Future<void> initDependencies() async {
    getIt.registerSingleton<Dio>(Dio());
    getIt.registerSingleton<UsersApiService>(UsersApiService(getIt()));
    getIt.registerLazySingleton<HiveProvider>(
      () => HiveProviderImpl(),
    );
    getIt.registerSingleton<UsersRepository>(
        UsersRepositoryImpl(getIt(), getIt()));
    getIt.registerSingleton<GetUsersUseCase>(GetUsersUseCase(getIt()));
    getIt.registerFactory<MainBloc>(() => MainBloc(getIt()));

    void _initHiveAdapter() {
      getIt.registerLazySingleton<UserEntityAdapter>(
        () => UserEntityAdapter(),
      );
    }

    _initHiveAdapter();
    Future<void> _initHive() async {
      await Hive.initFlutter();
      Hive.registerAdapter(
        getIt.get<UserEntityAdapter>(),
      );
    }

    _initHive();
  }
}

*/