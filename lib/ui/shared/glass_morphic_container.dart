import 'package:ai_chat_app/ui/shared/glass_morphism.dart';
import 'package:flutter/material.dart';

class GlassMorphicContainer extends StatelessWidget {
  final Widget child;

  const GlassMorphicContainer({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return GlassMorphism(
      borderRadius: 20.0,
      blurSigma: 3.0,
      gradientStartOpacity: 0.4,
      gradientEndOpacity: 0.4,
      borderWidth: 1.5,
      borderColor: Colors.white,
      child: child,
    );
  }
}
