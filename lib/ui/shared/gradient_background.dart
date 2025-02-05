import 'package:flutter/material.dart';

class GradientBackground extends StatelessWidget {
  final Widget child;

  const GradientBackground({
    required this.child,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Colors.green.withValues(alpha: 0.3),
            Colors.blue.withValues(alpha: 0.2),
            Colors.black,
          ],
          stops: [0.0, 0.3, 0.6], // Ensure these values are between 0.0 and 1.0
        ),
      ),
      child: child,
    );
  }
}
