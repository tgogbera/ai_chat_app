import 'package:flutter/material.dart';
import 'package:onboarding/constants/constants.dart';
import 'package:onboarding/ui/screens/onboarding/widgets/icon_container.dart';

class CommunityLightCardContent extends StatelessWidget {
  const CommunityLightCardContent({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconContainer(icon: Icons.person, padding: paddingS),
        IconContainer(icon: Icons.group, padding: paddingS),
        IconContainer(icon: Icons.insert_emoticon, padding: paddingS),
      ],
    );
  }
}
