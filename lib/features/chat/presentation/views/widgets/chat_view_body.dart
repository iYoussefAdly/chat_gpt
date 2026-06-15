import 'package:chat_gpt/core/utils/widgets/custom_text_field.dart';
import 'package:chat_gpt/features/chat/presentation/views/widgets/app_bar_section.dart';
import 'package:chat_gpt/features/chat/presentation/views/widgets/suggestion_view.dart';
import 'package:flutter/material.dart';

class ChatViewBody extends StatelessWidget {
  const ChatViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 29),
              child: AppBarSection(),
            ),
            Divider(height: 26, color: Color(0xffE5E5E5)),
            SizedBox(height: 6),
            Expanded(child: SuggestionView()),
          ],
        ),
        Positioned(
          bottom: 44,
          left: 25,
          right: 25,
          child: CustomTextField(controller: TextEditingController()))
      ],
    );
  }
}
