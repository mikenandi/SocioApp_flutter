import 'package:flutter/material.dart';
import 'package:flutter_learn_basics/components/bottom_nav_item.dart';
import 'package:flutter_learn_basics/components/new_post_modal.dart';
import 'package:flutter_learn_basics/config/app_icons.dart';
import 'package:flutter_learn_basics/enums/enums.dart';
import 'package:flutter_learn_basics/screens/home.dart';
import 'package:flutter_learn_basics/screens/profile.dart';
import 'package:flutter_learn_basics/styles/app_colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
// import 'package:flutter_learn_basics/styles/app_colors.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  Menus currentIndex = Menus.home;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBody: true,
        body: screens[currentIndex.index],
        bottomNavigationBar: MyButtonNavigationBar(
          currentIndex: currentIndex,
          onTap: (value) {
            if (value == Menus.add) {
              showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                builder: (context) => const NewPostModal(),
              );

              return;
            }
            setState(() {
              currentIndex = value;
            });
          },
        ));
  }
}

final screens = [
  Home(),
  const Center(
    child: Text(
      'Favorite Screen',
      style: TextStyle(fontSize: 22, color: AppColors.white),
    ),
  ),
  const Center(
    child: Text(
      'Post Screen',
      style: TextStyle(fontSize: 22, color: AppColors.white),
    ),
  ),
  const Center(
    child: Text(
      'Chat Screen',
      style: TextStyle(fontSize: 22, color: AppColors.white),
    ),
  ),
  const Profile(),
];

class MyButtonNavigationBar extends StatelessWidget {
  final Menus currentIndex;
  final ValueChanged<Menus> onTap;
  const MyButtonNavigationBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 88,
      margin: const EdgeInsets.all(16),
      child: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            top: 17,
            child: Container(
              height: 70,
              decoration: const BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.all(Radius.circular(25)),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: BottomNavItem(
                      current: currentIndex,
                      name: Menus.home,
                      icon: AppIcons.icHome,
                      onPressed: () => onTap(Menus.home),
                    ),
                  ),
                  Expanded(
                    child: BottomNavItem(
                      current: currentIndex,
                      name: Menus.favorite,
                      icon: AppIcons.icFavorite,
                      onPressed: () => onTap(Menus.favorite),
                    ),
                  ),
                  const Spacer(),
                  Expanded(
                    child: BottomNavItem(
                      current: currentIndex,
                      name: Menus.chat,
                      icon: AppIcons.icChat,
                      onPressed: () => onTap(Menus.chat),
                    ),
                  ),
                  Expanded(
                    child: BottomNavItem(
                      current: currentIndex,
                      name: Menus.profile,
                      icon: AppIcons.icProfile,
                      onPressed: () => onTap(Menus.profile),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            right: 0,
            top: 0,
            left: 0,
            child: GestureDetector(
              onTap: () => onTap(Menus.add),
              child: Container(
                  width: 64,
                  height: 64,
                  padding: const EdgeInsets.all(16),
                  decoration: const BoxDecoration(
                    color: AppColors.primary,
                    // borderRadius: BorderRadius.all(Radius.circular(32)),
                    shape: BoxShape.circle,
                  ),
                  child: SvgPicture.asset(AppIcons.icPlus)),
            ),
          )
        ],
      ),
    );
  }
}
