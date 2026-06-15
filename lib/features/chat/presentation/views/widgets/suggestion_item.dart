import 'package:chat_gpt/core/utils/theme/styles.dart';
import 'package:flutter/material.dart';

class SuggestionItem extends StatelessWidget {
  const SuggestionItem({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(vertical: 15),
      decoration: ShapeDecoration(
        color: const Color(0xFFF4F4F4),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      ),
      child: Center(
        child: Text(
          text,
          style: Styles.textStyleSuggestionItem,
        ),
      ),
    );
  }
}
