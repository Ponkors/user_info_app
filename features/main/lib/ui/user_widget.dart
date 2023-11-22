import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class UsersWidget extends StatelessWidget {
  final UserModel? user;

  const UsersWidget({
    Key? key,
    this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsetsDirectional.only(
          start: 15, end: 15, bottom: 15, top: 15),
      height: MediaQuery.of(context).size.width / 2,
      child: Row(
        children: [
          _buildUserInformation(),
        ],
      ),
    );
  }

  Widget _buildUserInformation() {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              user!.email ?? '!',
              style: const TextStyle(
                fontSize: 18,
                color: Colors.black,
              ),
            ),
            Text(
              user!.name ?? '!',
              style: const TextStyle(
                fontSize: 18,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
