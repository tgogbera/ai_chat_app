import 'dart:ui';
import 'package:flutter/material.dart';

class GlassMorphism extends StatelessWidget {
  /// The widget to display on top of the glass effect.
  final Widget child;

  /// The radius used for rounding the corners.
  final double borderRadius;

  /// The blur intensity (applied equally in both x and y directions).
  final double blurSigma;

  /// The starting opacity of the gradient.
  final double gradientStartOpacity;

  /// The ending opacity of the gradient.
  final double gradientEndOpacity;

  /// The width of the border.
  final double borderWidth;

  /// The color of the border.
  final Color borderColor;

  const GlassMorphism({
    required this.child,
    this.borderRadius = 20.0,
    this.blurSigma = 20.0, // increased blur for a stronger glass effect
    this.gradientStartOpacity = 0.1, // lighter tint at the start
    this.gradientEndOpacity = 0.05, // even more subtle tint at the end
    this.borderWidth = 1.0, // thinner border for delicacy
    this.borderColor = Colors.white,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: blurSigma, sigmaY: blurSigma),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.white.withValues(alpha: gradientStartOpacity),
                Colors.white.withValues(alpha: gradientEndOpacity),
              ],
            ),
            borderRadius: BorderRadius.circular(borderRadius),
            border: Border.all(width: borderWidth, color: borderColor.withValues(alpha: 0.2)),
          ),
          child: child,
        ),
      ),
    );
  }
}
