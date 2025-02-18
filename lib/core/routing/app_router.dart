import 'package:ai_chat_app/ui/chat_screen/chat_screen.dart';
import 'package:ai_chat_app/ui/history_screen/history_screen.dart';
import 'package:ai_chat_app/ui/home_screen/home_screen.dart';
import 'package:ai_chat_app/ui/login_screen/login_screen.dart';
import 'package:ai_chat_app/ui/main_screen/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  GoRouter getRouter() {
    final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

    return GoRouter(
      // initialLocation: LoginScreen.path,
      routes: [
        StatefulShellRoute.indexedStack(
            builder: (context, state, navigationShell) =>
                MainScreen(navigationShell: navigationShell),
            branches: [
              StatefulShellBranch(navigatorKey: navigatorKey, routes: [
                GoRoute(
                  path: HomeScreen.path,
                  pageBuilder: (context, state) => NoTransitionPage(
                    key: state.pageKey,
                    child: const HomeScreen(),
                  ),
                ),
              ]),
              StatefulShellBranch(routes: [
                GoRoute(
                  path: HistoryScreen.path,
                  pageBuilder: (context, state) => NoTransitionPage(
                    key: state.pageKey,
                    child: const HistoryScreen(),
                  ),
                ),
              ]),
            ]),
        GoRoute(
          path: ChatScreen.path,
          builder: (context, state) => const ChatScreen(),
        ),
        GoRoute(
          path: LoginScreen.path,
          builder: (context, state) => const LoginScreen(),
        ),
      ],
    );
  }
}
