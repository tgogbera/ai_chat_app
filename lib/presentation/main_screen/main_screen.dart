import 'dart:async';

import 'package:ai_chat_app/presentation/main_screen/widgets/animated_floating_action_button.dart';
import 'package:ai_chat_app/presentation/main_screen/widgets/bottom_nav_bar.dart';
import 'package:chat/ui/chat_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ui_kit/widgets/gradient_background.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({
    required this.navigationShell,
    super.key,
  });
  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: GradientBackground(
        child: navigationShell,
      ),
      floatingActionButton: AnimatedFloatingActionButton(
        onPressed: () {
          unawaited(context.push(ChatScreen.path));
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavBar(
        navigationShell: navigationShell,
      ),
    );
  }
}
