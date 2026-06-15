import 'package:chat_gpt/core/utils/assets.dart';
import 'package:chat_gpt/core/utils/routing/app_router.dart';
import 'package:chat_gpt/features/splash&onBoarding/presentation/views/widgets/custom_button.dart';
import 'package:chat_gpt/features/splash&onBoarding/presentation/views/widgets/title_subtitle_section.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class OnboardingViewBody extends StatelessWidget {
  const OnboardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 21),
      child: Column(
        children: [
          SizedBox(height: 79),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 46),
            child: TitleAndSubTitle(),
          ),
          SizedBox(height: 84),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 7),
            child: Image.asset(Assets.onboardingImage),
          ),
          Spacer(),
          CustomButton(
            onTap: () {
              GoRouter.of(context).push(AppRouter.kChatView);
            },
          ),
          SizedBox(height: 34),
        ],
      ),
    );
  }
}
