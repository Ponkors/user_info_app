import 'package:domain/domain.dart';
import 'package:flutter/material.dart';

class SelectedUserScreen extends StatelessWidget {
  final UserModel user;

  const SelectedUserScreen({
    required this.user,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final MediaQueryData mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: Text(user!.name ?? "???"),
            ),
            body: SingleChildScrollView(
                padding: const EdgeInsets.all(20),
                child: Card(
                    shadowColor: Colors.lightBlue,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(16),
                      ),
                    ),
                    elevation: 5,
                    child: Column(
                      children: <Widget>[
                        const SizedBox(
                          height: 10,
                        ),
                        ListTile(
                          title: Text(
                            'User name: ${user!.name ?? "N/A"}',
                          ),
                        ),
                        ListTile(
                          title: Text(
                            'Email: ${user.email ?? "N/A"}',
                          ),
                        ),
                        ListTile(
                          title: Text(
                            'Phone: ${user.phone ?? "N/A"}',
                          ),
                        ),
                        ListTile(
                          title: Text(
                            'City: ${user.address?.city ?? "N/A"}',
                          ),
                        ),
                        ListTile(
                          title: Text(
                            'Company: ${user.company?.name ?? "N/A"}',
                          ),
                        ),
                      ],
                    )))));
  }
}
