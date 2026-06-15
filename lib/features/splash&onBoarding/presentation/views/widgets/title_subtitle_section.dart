import 'package:chat_gpt/core/utils/theme/styles.dart';
import 'package:flutter/material.dart';

class TitleAndSubTitle extends StatelessWidget {
  const TitleAndSubTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("You AI Assistant",style: Styles.textStyleOnBoardingTitle,),
        SizedBox(
          height: 14,
        ),
        Text("Using this software,you can ask you\nquestions and receive articles using",style: Styles.textStyleOnBoardingSubTitle,),
        Text("artificial intelligence assistant",style: Styles.textStyleOnBoardingSubTitle,),
      ],
    );
  }
}