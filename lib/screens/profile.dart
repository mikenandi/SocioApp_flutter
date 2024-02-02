import 'package:flutter/material.dart';
import 'package:flutter_learn_basics/components/toolbar.dart';
import 'package:flutter_learn_basics/components/user_avatar.dart';
import 'package:flutter_learn_basics/config/app_routes.dart';
import 'package:flutter_learn_basics/styles/app_colors.dart';
import 'package:flutter_learn_basics/styles/app_text.dart';

enum ProfileMenu { edit, logout }

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ToolBar(
        title: 'Profile',
        actions: [
          PopupMenuButton<ProfileMenu>(
              onSelected: (selected) {
                if (selected == ProfileMenu.edit) {
                  Navigator.of(context).pushNamed(AppRoutes.editProfile);
                }
              },
              icon: const Icon(Icons.more_vert_outlined),
              itemBuilder: (context) {
                return [
                  const PopupMenuItem(
                    value: ProfileMenu.edit,
                    child: Text('Edit'),
                    // onTap: () {
                    //   Navigator.of(context).pushNamed('/edit_profile');
                    // },
                  ),
                  const PopupMenuItem(
                    value: ProfileMenu.logout,
                    child: Text('Log Out'),
                  )
                ];
              })
        ],
      ),
      body: const Column(children: [
        UserAvatar(
          size: 90,
        ),
        Text(
          'Mahdi Mirzadeh',
          style: AppText.header2,
        ),
        SizedBox(
          height: 24,
        ),
        Text(
          'Madagascar',
          style: AppText.subtitle3,
        ),
        SizedBox(
          height: 12,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Text(
                  '114',
                  style: AppText.header2,
                ),
                Text('Followers'),
              ],
            ),
            Column(
              children: [
                Text(
                  '114',
                  style: AppText.header2,
                ),
                Text('Posts'),
              ],
            ),
            Column(
              children: [
                Text('114', style: AppText.header2),
                Text(
                  'Following',
                ),
              ],
            )
          ],
        ),
        Divider(
          thickness: .5,
          color: AppColors.white,
          indent: 40,
          endIndent: 40,
          height: 40,
        )
      ]),
    );
  }
}
