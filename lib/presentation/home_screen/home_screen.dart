import 'dart:async';

import 'package:ai_chat_app/presentation/home_screen/widgets/quick_action_item.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  static const path = '/';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  final List<Widget> items = [
    Container(
      alignment: Alignment.centerLeft,
      margin: const EdgeInsets.only(
        top: 16,
      ),
      child: const Text(
        'Welcome to AI Chat!',
        style: TextStyle(
          fontSize: 32,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
    Container(
      margin: const EdgeInsets.only(bottom: 24),
      alignment: Alignment.centerLeft,
      child: Text(
        'Get started by choosing an option below to chat with AI, manage your profile, or customize your settings.',
        style: TextStyle(
          fontSize: 16,
          color: Colors.grey[600],
        ),
      ),
    ),
    QuickActionItem(
      icon: Icons.message,
      title: 'Messages',
      subtitle: 'View your messages',
      onTap: () {},
    ),
    QuickActionItem(
      icon: Icons.person,
      title: 'Profile',
      subtitle: 'View your profile',
      onTap: () {},
    ),
    QuickActionItem(
      icon: Icons.settings,
      title: 'Settings',
      subtitle: 'Adjust your settings',
      onTap: () {},
    ),
  ];

  @override
  void initState() {
    super.initState();
    // Duration can be adjusted based on how long you want the overall animation to last.
    _controller = AnimationController(
      duration: const Duration(milliseconds: 1200),
      vsync: this,
    );
    // Start the animation as soon as the screen is built.
    unawaited(_controller.forward());
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  // Creates a slide animation for the item at the given index.
  Animation<Offset> _slideAnimation(int index) {
    // Stagger the animations using an interval.
    // For four items, we can have a slight delay between each.
    final start = index * 0.15;
    var end = start + 0.5;
    if (end > 1.0) end = 1.0;

    return Tween<Offset>(
      begin: const Offset(0, 0.5), // Start slightly below its final position.
      end: Offset.zero, // End at its natural position.
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Interval(start, end, curve: Curves.easeOut),
      ),
    );
  }

  // Creates a fade animation for the item at the given index.
  Animation<double> _fadeAnimation(int index) {
    final start = index * 0.15;
    var end = start + 0.5;
    if (end > 1.0) end = 1.0;

    return Tween<double>(
      begin: 0, // Fully transparent.
      end: 1, // Fully opaque.
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Interval(start, end, curve: Curves.easeIn),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: List.generate(items.length, (index) {
            return SlideTransition(
              position: _slideAnimation(index),
              child: FadeTransition(
                opacity: _fadeAnimation(index),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: items[index],
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
