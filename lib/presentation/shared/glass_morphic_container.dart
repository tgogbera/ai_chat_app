import 'package:ai_chat_app/presentation/shared/glass_morphism.dart';
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
      borderWidth: 1.5,
      borderColor: Colors.white,
      child: child,
    );
  }
}
