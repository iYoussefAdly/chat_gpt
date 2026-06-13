import 'package:chat_gpt/features/splash&onBoarding/presentation/views/onBoarding_view.dart';
import 'package:chat_gpt/features/splash&onBoarding/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kSplashView = "/SplashView";
  static const kOnBoardingView = "/OnBoardingView";
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: "/",
        builder: (context, state) {
          return SplashView();
        },
      ),
      GoRoute(
        path: kOnBoardingView,
        builder: (context, state) {
          return OnboardingView();
        },
      ),
    ],
  );
}
