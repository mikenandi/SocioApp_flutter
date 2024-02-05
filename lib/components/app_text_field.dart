import 'package:flutter/material.dart';
import 'package:flutter_learn_basics/styles/app_colors.dart';

class AppTextField extends StatelessWidget {
  final String hint;
  final ValueChanged<String>? onChange;
  const AppTextField({
    super.key,
    required this.hint,
    this.onChange,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChange,
      decoration: InputDecoration(
        hintText: hint,
        labelText: hint,
        border: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent),
            borderRadius: BorderRadius.all(Radius.circular(12))),
        fillColor: AppColors.white.withOpacity(.5),
        filled: true,
      ),
    );
  }
}
