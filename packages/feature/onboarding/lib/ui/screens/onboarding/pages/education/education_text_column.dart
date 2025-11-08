import 'package:flutter/material.dart';
import 'package:onboarding/ui/screens/onboarding/widgets/text_column.dart';

class EducationTextColumn extends StatelessWidget {
  const EducationTextColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return const TextColumn(
      title: 'Keep Learning',
      text:
          'Cras pellentesque erat ut arcu rhoncus sagittis. Fusce laoreet dolor neque, sit amet pellentesque.',
    );
  }
}
