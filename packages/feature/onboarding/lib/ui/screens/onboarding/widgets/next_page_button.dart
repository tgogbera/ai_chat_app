import 'package:flutter/material.dart';
import 'package:onboarding/constants/constants.dart';

class NextPageButton extends StatelessWidget {
  final VoidCallback onPressed;

  const NextPageButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      padding: const EdgeInsets.all(paddingM),
      elevation: 0,
      shape: const CircleBorder(),
      fillColor: Colors.white,
      onPressed: onPressed,
      child: const Icon(Icons.arrow_forward, color: colorBlue, size: 32),
    );
  }
}
