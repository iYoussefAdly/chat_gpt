import 'package:chat_gpt/core/utils/assets.dart';
import 'package:chat_gpt/features/chat/data/models/suggestion_model.dart';
import 'package:chat_gpt/features/chat/presentation/views/widgets/suggestion_section.dart';
import 'package:flutter/material.dart';

class SuggestionView extends StatelessWidget {
  SuggestionView({super.key});

  final List<SuggestionModel> suggestions = [
    SuggestionModel(
      image: Assets.explainImage,
      title: "Explain",
      suggestions: [
        "Explain Quantum physics",
        "What are wormholes explain like i am 5",
      ],
    ),
    SuggestionModel(
      image: Assets.edit2,
      title: "Write & edit",
      suggestions: [
        "Write a tweet about global warming",
        "Write a poem about flower and love",
        "Write a rap song lyrics about",
      ],
    ),
    SuggestionModel(
      image: Assets.translateImage,
      title: "Translate",
      suggestions: [
        "Write a rap song lyrics about",
        "Write a poem about flower and love",
        "How do you say “how are you” in korean?",
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: suggestions.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(right: 29,left:29,bottom: 37),
          child: SuggestionSection(suggestionModel: suggestions[index]),
        );
      },
    );
  }
}
