import 'package:flutter/material.dart';
import 'package:onboarding/widgets/logo.dart';

class Header extends StatelessWidget {
  final VoidCallback onSkip;

  const Header({super.key, required this.onSkip});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Logo(color: Colors.white, size: 32.0),
        GestureDetector(
          onTap: onSkip,
          child: const Text('Skip', style: TextStyle(color: Colors.white)),
        ),
      ],
    );
  }
}
