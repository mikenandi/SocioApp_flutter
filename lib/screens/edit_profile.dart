import 'package:flutter/material.dart';
import 'package:flutter_learn_basics/components/app_text_field.dart';
import 'package:flutter_learn_basics/components/toolbar.dart';
import 'package:flutter_learn_basics/components/user_avatar.dart';
import 'package:flutter_learn_basics/config/app_icons.dart';
import 'package:flutter_learn_basics/styles/app_colors.dart';
import 'package:flutter_learn_basics/styles/app_text.dart';
import 'package:flutter_svg/svg.dart';

enum Gender { none, male, female }

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  var gender = Gender.male;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const ToolBar(
        title: 'Edit profile',
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Stack(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: UserAvatar(
                      size: 120,
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                        padding: const EdgeInsets.all(4),
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(4)),
                          color: AppColors.primary,
                        ),
                        child: SvgPicture.asset(AppIcons.icCamera)),
                  )
                ],
              ),
              const SizedBox(
                height: 60,
              ),
              const AppTextField(hint: 'First name'),
              const SizedBox(
                height: 16,
              ),
              const AppTextField(
                hint: 'Last name',
              ),
              const SizedBox(
                height: 16,
              ),
              const AppTextField(hint: 'Phone number'),
              const SizedBox(
                height: 16,
              ),
              const AppTextField(hint: 'Location'),
              const SizedBox(
                height: 16,
              ),
              const AppTextField(hint: 'Birthday'),
              const SizedBox(
                height: 16,
              ),

              Container(
                padding: const EdgeInsets.only(
                  left: 12,
                  right: 12,
                  top: 4,
                ),
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(.5),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(8),
                    )),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Gender',
                      style: AppText.body2.copyWith(fontSize: 12),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: RadioListTile(
                            title: const Text('Male'),
                            value: Gender.male,
                            groupValue: gender,
                            contentPadding: EdgeInsets.zero,
                            onChanged: (value) {
                              setState(() {
                                gender = Gender.male;
                              });
                            },
                          ),
                        ),
                        Expanded(
                          child: RadioListTile(
                            title: const Text('Female'),
                            value: Gender.female,
                            contentPadding: EdgeInsets.zero,
                            groupValue: gender,
                            onChanged: (value) {
                              setState(() {
                                gender = Gender.female;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              // Row(children: [],),
            ],
          ),
        ),
      ),
    );
  }
}
