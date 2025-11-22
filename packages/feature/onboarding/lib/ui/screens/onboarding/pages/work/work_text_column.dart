import 'package:flutter/material.dart';
import 'package:onboarding/ui/screens/onboarding/widgets/text_column.dart';

class WorkTextColumn extends StatelessWidget {
  const WorkTextColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return const TextColumn(
      title: 'Collaborate',
      text:
          'Streamline teamwork with shared boards, real-time editing, and integrated tools that help your team move faster and ship together.',
    );
  }
}
