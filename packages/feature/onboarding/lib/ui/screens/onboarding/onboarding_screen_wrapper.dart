import 'package:flutter/material.dart';
import 'package:onboarding/ui/screens/onboarding/onboarding_screen.dart';

class OnboardingScreenWrapper extends StatelessWidget {
  const OnboardingScreenWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.sizeOf(context).height;
    return OnboardingScreen(screenHeight: screenHeight);
  }
}
