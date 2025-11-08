import 'package:flutter/material.dart';
import 'package:onboarding/ui/screens/onboarding/widgets/text_column.dart';

class CommunityTextColumn extends StatelessWidget {
  const CommunityTextColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return const TextColumn(
      title: 'Community',
      text:
          'Connect with people who share your interests. Join groups, ask questions, and collaborate in real time to solve problems together.',
    );
  }
}
