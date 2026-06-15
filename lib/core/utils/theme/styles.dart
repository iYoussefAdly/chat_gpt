import 'package:chat_gpt/core/utils/theme/app_colors.dart';
import 'package:flutter/material.dart';

abstract class Styles {
  // Onboarding title — "You AI Assistant" — Bold 23px, primary blue
  static const TextStyle textStyleOnBoardingTitle = TextStyle(
    fontSize: 23,
    fontWeight: FontWeight.bold,
    color: AppColors.kPrimaryColor,
  );

  // Onboarding subtitle — description text — Medium 15px, grey
  static const TextStyle textStyleOnBoardingSubTitle = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w500,
    color: AppColors.kGreyColor,
  );

  // Button label — "Continue" — Bold 19px, white
  static const TextStyle textStyleButton = TextStyle(
    fontSize: 19,
    fontWeight: FontWeight.bold,
    color: AppColors.kWhiteColor,
  );

  // AppBar title — "ChatGPT" — Bold 20px, primary blue
  static const TextStyle textStyleAppBarTitle = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: AppColors.kPrimaryColor,
  );

  // Online status — "Online" — Medium 17px, green
  static const TextStyle textStyleOnlineStatus = TextStyle(
    fontSize: 17,
    fontWeight: FontWeight.w500,
    color: AppColors.kOnlineGreenColor,
  );

  // Category label — "Explain", "Write & edit", "Translate" — Bold 14px, dark
  static const TextStyle textStyleCategoryLabel = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.bold,
    color: AppColors.kCategoryLabelColor,
  );

  // Suggestion item text — Medium 14px, dark
  static const TextStyle textStyleSuggestionItem = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: AppColors.kDarkTextColor,
  );

  // Chat input / message text — Bold 13px, primary blue
  static const TextStyle textStyleChatInput = TextStyle(
    fontSize: 13,
    fontWeight: FontWeight.bold,
    color:Color(0xff9E9E9E),
  );
}
