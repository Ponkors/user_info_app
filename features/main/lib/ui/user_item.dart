import 'package:core/core.dart';
import 'package:core_ui/core_ui.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:main/bloc/main_bloc.dart';

class UserItem extends StatelessWidget {
  final UserModel? user;
  final VoidCallback onTap;

  const UserItem({
    Key? key,
    this.user,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final MediaQueryData mediaQueryData = MediaQuery.of(context);
    final MainBloc mainBloc = BlocProvider.of<MainBloc>(context);
    return InkWell(
      splashColor: Colors.blue,
      borderRadius: const BorderRadius.all(
        Radius.circular(16),
      ),
      onTap: onTap,
      child: Card(
        shadowColor: Colors.lightBlue,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(16),
          ),
        ),
        child: Container(
          height: 30,
          child: Row(
            children: <Widget>[
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Icon(Icons.person),
                  Text(
                    user!.name ?? "?",
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: <Widget>[
                      // DishCardButton(
                      //   label: '${'menuScreen.add'.tr()}',
                      //   onPressed: () {
                      //     cartBloc.add(
                      //       AddDishToCart(dish: dish),
                      //     );
                      //     final SnackBar snackBar = SnackBar(
                      //       content: Text(
                      //         'menuScreen.dishAddedToTheCart'.tr(),
                      //         style: GoogleFonts.poppins(
                      //           textStyle: AppFonts.normal_18,
                      //         ),
                      //       ),
                      //       behavior: SnackBarBehavior.floating,
                      //       backgroundColor: themeData.primaryColor,
                      //       duration: const Duration(seconds: 2),
                      //     );
                      //     ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      //   },
                      // ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
