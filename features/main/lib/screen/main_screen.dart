import 'package:core/core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:main/bloc/main_state.dart';
import 'package:main/main.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }

  _buildAppBar() {
    return AppBar(
      title: Text(
        'Users Info',
        style: TextStyle(
          color: Colors.black,
          fontSize: 20,
        ),
      ),
    );
  }

  _buildBody() {
    return BlocBuilder<MainBloc, MainState>(builder: (_, state) {
      if (state is UsersLoadingFromNetwork) {
        return const Center(child: CupertinoActivityIndicator());
      }
      if (state is UsersLoadingFromNetworkError) {
        return const Center(child: Icon(Icons.refresh));
      }
      if (state is UsersLoadingFromNetworkDone) {
        return ListView.builder(
          itemCount: state.listOfUsers!.length,
          itemBuilder: (context, index) {
            return UsersWidget(
              user: state.listOfUsers![index],
            );
          },
        );
      }
      return const SizedBox();
    });
  }
}
