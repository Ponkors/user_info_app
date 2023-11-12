import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:main/main.dart';

Future<void> main() async {
  await dataDI.initDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<MainBloc>(
      create: (context) => getIt()..add(const GetUsersInfo()),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MainScreen(),
      ),
    );
  }
}
