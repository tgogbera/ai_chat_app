import 'package:flutter/material.dart';
import 'package:ui_kit/widgets/glass_morphism.dart';

class GlassMorphicContainer extends StatelessWidget {
  const GlassMorphicContainer({
    required this.child,
    super.key,
  });
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return GlassMorphism(
      borderWidth: 1.5,
      child: child,
    );
  }
}
