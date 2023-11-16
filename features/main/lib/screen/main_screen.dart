import 'package:core/core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:main/bloc/main_state.dart';
import 'package:main/main.dart';
import 'package:navigation/navigation.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: _buildAppBar(),
        body: _buildBody(),
      ),
    );
  }

  _buildAppBar() {
    return AppBar(
      title: Text(
        "User's Info",
        style: TextStyle(
          color: Colors.black,
          fontSize: 20,
        ),
      ),
    );
  }

  _buildBody() {
    return BlocBuilder<MainBloc, MainState>(
      builder: (_, state) {
        if (state is UsersLoadingFromNetwork) {
          return const Center(child: CupertinoActivityIndicator());
        }
        if (state is UsersLoadingFromNetworkError) {
          return const Center(child: Icon(Icons.refresh));
        }
        if (state is UsersLoadingFromNetworkDone) {
          return ListView.builder(
            padding: const EdgeInsets.all(20),
            itemCount: state.listOfUsers!.length,
            itemBuilder: (context, index) {
              return UserItem(
                user: state.listOfUsers![index],
                onTap: () {
                  context.router.push(SelectedUserRoute(
                    user: state.listOfUsers![index],
                  ));
                },
              );
            },
          );
        }
        return const SizedBox();
      },
    );
  }
}
