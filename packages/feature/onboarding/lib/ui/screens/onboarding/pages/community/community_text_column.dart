import 'package:flutter/material.dart';
import 'package:onboarding/ui/screens/onboarding/widgets/text_column.dart';

class CommunityTextColumn extends StatelessWidget {
  const CommunityTextColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return const TextColumn(
      title: 'Community',
      text:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras egestas, lorem ut scelerisque tristique.',
    );
  }
}
