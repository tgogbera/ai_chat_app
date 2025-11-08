import 'package:flutter/material.dart';
import 'package:onboarding/constants/constants.dart';
import 'package:onboarding/ui/screens/onboarding/widgets/icon_container.dart';

class EducationLightCardContent extends StatelessWidget {
  const EducationLightCardContent({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconContainer(
          icon: Icons.brush,
          padding: paddingS,
        ),
        IconContainer(
          icon: Icons.camera_alt,
          padding: paddingS,
        ),
        IconContainer(
          icon: Icons.straighten,
          padding: paddingS,
        ),
      ],
    );
  }
}
