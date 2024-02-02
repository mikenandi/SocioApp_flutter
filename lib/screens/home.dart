import 'package:flutter/material.dart';
import 'package:flutter_learn_basics/components/post_item.dart';
import 'package:flutter_learn_basics/components/toolbar.dart';
import 'package:flutter_learn_basics/config/app_icons.dart';
import 'package:flutter_learn_basics/config/app_routes.dart';
import 'package:flutter_svg/flutter_svg.dart';
// import 'package:flutter_learn_basics/styles/app_text.dart';

// ignore: must_be_immutable
class Home extends StatelessWidget {
  Home({super.key});

  List<String> users = [];

  @override
  Widget build(BuildContext context) {
    mockUsersFromServer();
    return Scaffold(
      appBar: ToolBar(
        title: 'SocioApp',
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed(AppRoutes.nearyBy);
            },
            icon: SvgPicture.asset(AppIcons.icMapPin),
          ),
          // const SizedBox(
          //   width: 16,
          // )
        ],
      ),
      body: ListView.separated(
        itemCount: users.length,
        itemBuilder: (context, index) {
          // print(users.length);
          return PostItem(user: users[index]);
        },
        separatorBuilder: (context, index) {
          return const SizedBox(
            height: 16,
          );
        },
      ),
    );
  }

  mockUsersFromServer() {
    // List<Widget> users = [];

    for (int i = 0; i < 6; i++) {
      users.add('Bernice Foundry $i');
    }

    // return users;
  }
}
