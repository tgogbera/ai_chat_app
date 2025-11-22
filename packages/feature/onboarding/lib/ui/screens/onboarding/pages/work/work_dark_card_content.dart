import 'package:flutter/material.dart';
import 'package:onboarding/constants/constants.dart';

class WorkDarkCardContent extends StatelessWidget {
  const WorkDarkCardContent({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [Icon(Icons.person_pin, color: Colors.white, size: 32)],
        ),
        SizedBox(height: spaceM),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(Icons.person, color: Colors.white, size: 32),
            Icon(Icons.group, color: Colors.white, size: 32),
            Icon(Icons.insert_emoticon, color: Colors.white, size: 32),
          ],
        ),
      ],
    );
  }
}
