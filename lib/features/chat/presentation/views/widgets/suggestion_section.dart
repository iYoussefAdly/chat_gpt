import 'package:chat_gpt/core/utils/theme/styles.dart';
import 'package:chat_gpt/features/chat/data/models/suggestion_model.dart';
import 'package:chat_gpt/features/chat/presentation/views/widgets/suggestion_item.dart';
import 'package:flutter/material.dart';

class SuggestionSection extends StatelessWidget {
  const SuggestionSection({super.key, required this.suggestionModel});
  final SuggestionModel suggestionModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(suggestionModel.image),
        SizedBox(height: 5),
        Text(suggestionModel.title, style: Styles.textStyleCategoryLabel),
        SizedBox(height: 18),
        ...suggestionModel.suggestions.map((s) => Padding(
          padding: const EdgeInsets.only(bottom: 8),
          child: SuggestionItem(text: s,),
        ))
      ],
    );
  }
}
