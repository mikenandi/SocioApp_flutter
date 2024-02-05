import 'package:flutter/material.dart';
import 'package:flutter_learn_basics/components/app_text_field.dart';
import 'package:flutter_learn_basics/provider/app_repo.dart';
import 'package:flutter_learn_basics/provider/post_provider.dart';
import 'package:flutter_learn_basics/styles/app_colors.dart';
import 'package:flutter_learn_basics/styles/app_text.dart';
import 'package:provider/provider.dart';

class NewPostModal extends StatelessWidget {
  const NewPostModal({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: AppColors.background,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          )),
      padding: const EdgeInsets.all(24),
      width: double.infinity,
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        const Text(
          'Insert message',
          style: AppText.header1,
        ),
        const SizedBox(
          height: 16,
        ),
        AppTextField(
            hint: 'Message ...',
            onChange: (value) {
              context.read<PostProvider>().message = value;
            }),
        const SizedBox(
          height: 16,
        ),
        const Text(
          'Add image',
          style: AppText.header1,
        ),
        const SizedBox(
          height: 16,
        ),
        Container(
          width: 160,
          height: 160,
          decoration: BoxDecoration(
              border: Border.all(
                width: 2,
                color: AppColors.disableFont,
              ),
              borderRadius: const BorderRadius.all(Radius.circular(10))),
          child: const Center(child: Text('Upload image')),
        ),
        const SizedBox(
          height: 16,
        ),
        const Text(
          'OR',
          style: AppText.body1,
        ),
        const SizedBox(
          height: 16,
        ),
        OutlinedButton(onPressed: () {}, child: const Text('Camera')),
        const SizedBox(
          height: 16,
        ),
        ElevatedButton(
            onPressed: () {
              context
                  .read<PostProvider>()
                  .createPost(
                    context.read<AppRepo>().token!,
                  )
                  .then((value) {
                Navigator.of(context).pop();
              });
            },
            child: const Text('Post now'))
      ]),
    );
  }
}
