import 'package:ai_chat_app/ui/chat_screen/chat_screen.dart';
import 'package:ai_chat_app/ui/main_screen/widgets/animated_floating_action_button.dart';
import 'package:ai_chat_app/ui/main_screen/widgets/bottom_nav_bar.dart';
import 'package:ai_chat_app/ui/shared/gradient_background.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MainScreen extends StatelessWidget {
  final StatefulNavigationShell navigationShell;

  const MainScreen({
    required this.navigationShell,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: GradientBackground(
          child: navigationShell,
        ),
        floatingActionButton: AnimatedFloatingActionButton(
          onPressed: () => context.push(ChatScreen.path),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomNavBar(
          navigationShell: navigationShell,
        ),
      ),
    );
  }
}
