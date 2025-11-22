import 'package:flutter/material.dart';
import 'package:onboarding/ui/screens/onboarding/widgets/text_column.dart';

class EducationTextColumn extends StatelessWidget {
  const EducationTextColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return const TextColumn(
      title: 'Keep Learning',
      text:
          'Access bite-sized lessons, tutorials, and guided projects tailored to your level — learn at your own pace and track your progress.',
    );
  }
}
