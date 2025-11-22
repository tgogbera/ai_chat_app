import 'package:ai_chat_app/presentation/history_screen/history_screen.dart';
import 'package:ai_chat_app/presentation/home_screen/home_screen.dart';
import 'package:ai_chat_app/presentation/login_screen/login_screen.dart';
import 'package:ai_chat_app/presentation/main_screen/main_screen.dart';
import 'package:chat/router/chat_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:onboarding/ui/screens/onboarding/onboarding_screen_wrapper.dart';

class AppRouter {
  static GoRouter get router => _router;

  static final navigatorKey = GlobalKey<NavigatorState>();

  static final GoRouter _router = GoRouter(
    debugLogDiagnostics: true,
    initialLocation: '/onboarding',
    routes: [
      GoRoute(
        path: '/onboarding',
        builder: (context, state) => const OnboardingScreenWrapper(),
      ),
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) => MainScreen(navigationShell: navigationShell),
        branches: [
          StatefulShellBranch(
            navigatorKey: navigatorKey,
            routes: [
              GoRoute(
                path: HomeScreen.path,
                pageBuilder: (context, state) => NoTransitionPage(
                  key: state.pageKey,
                  child: const HomeScreen(),
                ),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: HistoryScreen.path,
                pageBuilder: (context, state) => NoTransitionPage(
                  key: state.pageKey,
                  child: const HistoryScreen(),
                ),
              ),
            ],
          ),
        ],
      ),
      ...chatRoutes,
      GoRoute(
        path: LoginScreen.path,
        builder: (context, state) => const LoginScreen(),
      ),
    ],
  );
}
