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
