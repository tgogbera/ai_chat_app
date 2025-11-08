import 'package:flutter/material.dart';
import 'package:onboarding/constants/constants.dart';

class Ripple extends StatelessWidget {
  final double radius;

  const Ripple({super.key, required this.radius});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Positioned(
      left: screenWidth / 2 - radius,
      bottom: 2 * paddingL - radius,
      child: Container(
        width: 2 * radius,
        height: 2 * radius,
        decoration: const BoxDecoration(shape: BoxShape.circle, color: Colors.white),
      ),
    );
  }
}
