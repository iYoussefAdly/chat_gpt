import 'package:chat_gpt/core/utils/assets.dart';
import 'package:chat_gpt/core/utils/theme/app_colors.dart';
import 'package:chat_gpt/core/utils/theme/styles.dart';
import 'package:flutter/material.dart';

class AppBarSection extends StatelessWidget {
  const AppBarSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.arrow_back, size: 24),
        SizedBox(width: 17),
        Image.asset(Assets.robotImage),
        SizedBox(width: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("ChatGPT", style: Styles.textStyleAppBarTitle),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 6,
                  height: 6,
                  decoration: ShapeDecoration(
                    color: AppColors.kOnlineGreenColor,
                    shape: OvalBorder(),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Text("Online",style: Styles.textStyleOnlineStatus,)
              ],
            ),
          ],
        ),
        Spacer(),
        Image.asset(Assets.volumeImage),
        SizedBox(
          width: 19,
        ),
        Image.asset(Assets.exportImage)
      ],
    );
  }
}
