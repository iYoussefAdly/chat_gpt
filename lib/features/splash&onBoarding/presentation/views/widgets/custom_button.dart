import 'package:chat_gpt/core/utils/theme/app_colors.dart';
import 'package:chat_gpt/core/utils/theme/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.onTap});
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap,
      child: Container(
        padding: EdgeInsetsDirectional.symmetric(vertical: 15),
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.kPrimaryColor,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Text("Continue", style: Styles.textStyleButton),
            Positioned(
              right: 20,
              child: Icon(Icons.arrow_forward, size: 24, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
