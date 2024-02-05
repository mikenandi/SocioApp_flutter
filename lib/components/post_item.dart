import 'package:flutter/material.dart';
import 'package:flutter_learn_basics/components/user_avatar.dart';
import 'package:flutter_learn_basics/styles/app_text.dart';

class PostItem extends StatelessWidget {
  final String user;

  const PostItem({
    super.key,
    required this.user,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      child: Column(
        children: [
          Row(
            children: [
              const UserAvatar(),
              const SizedBox(
                width: 16,
              ),
              Text(
                user,
                style: AppText.subtitle3,
              ),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          ClipRRect(
            borderRadius: const BorderRadius.all(
              Radius.circular(16),
            ),
            child: Image.asset(
              'assets/images/user.png',
              // width: double.infinity,
              // fit: BoxFit.fitWidth,
            ),
          ),
          const Text(
            'The sun is a daily reminder that we too can rise from the darkness, that we too can shine our own light 🌞💖',
            style: AppText.subtitle3,
          )
        ],
      ),
    );
  }
}
