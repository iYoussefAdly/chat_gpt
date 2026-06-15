import 'package:chat_gpt/core/utils/assets.dart';
import 'package:chat_gpt/core/utils/functions/build_border.dart';
import 'package:chat_gpt/core/utils/theme/app_colors.dart';
import 'package:chat_gpt/core/utils/theme/styles.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.controller});
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.13),
            blurRadius: 10,
            offset: Offset(5, 4),
          ),
        ],
      ),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(vertical: 19, horizontal: 22),
          hintText: "Write your message",
          hintStyle: Styles.textStyleChatInput,
          filled: true,
          fillColor: Colors.transparent,
          enabledBorder: buildBorder(),
          focusedBorder: buildBorder(color: AppColors.kPrimaryColor),
          errorBorder: buildBorder(color: Colors.red),
          suffixIcon: Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(Assets.microphoneImage, width: 24, height: 24),
                const SizedBox(width: 7),
                Image.asset(Assets.sendImage, width: 24, height: 24),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
