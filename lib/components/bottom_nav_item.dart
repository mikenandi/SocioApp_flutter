import 'package:flutter/material.dart';
import 'package:flutter_learn_basics/enums/enums.dart';
import 'package:flutter_learn_basics/styles/app_colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavItem extends StatelessWidget {
  final VoidCallback onPressed;
  final String icon;
  final Menus current;
  final Menus name;

  const BottomNavItem({
    super.key,
    required this.onPressed,
    required this.icon,
    required this.current,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => onPressed(),
      icon: SvgPicture.asset(
        icon,
        colorFilter: ColorFilter.mode(
          current == name ? AppColors.black : AppColors.black.withOpacity(0.3),
          BlendMode.srcIn,
        ),
      ),
    );
  }
}
