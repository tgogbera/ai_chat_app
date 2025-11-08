import 'package:flutter/material.dart';
import 'package:onboarding/constants/constants.dart';
import 'package:onboarding/ui/screens/onboarding/widgets/icon_container.dart';

class WorkLightCardContent extends StatelessWidget {
  const WorkLightCardContent({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconContainer(icon: Icons.event_seat, padding: paddingS),
        IconContainer(icon: Icons.business_center, padding: paddingS),
        IconContainer(icon: Icons.assignment, padding: paddingS),
      ],
    );
  }
}
