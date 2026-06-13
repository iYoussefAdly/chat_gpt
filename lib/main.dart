import 'package:chat_gpt/core/utils/routing/app_router.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const ChatGpt());
}

class ChatGpt extends StatelessWidget {
  const ChatGpt({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      theme: ThemeData(
        textTheme: GoogleFonts.nunitoTextTheme(),
      ),
    );
  }
}