import 'package:flutter/material.dart';
import 'package:onboarding/ui/screens/onboarding/widgets/text_column.dart';

class WorkTextColumn extends StatelessWidget {
  const WorkTextColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return const TextColumn(
      title: 'Work together',
      text:
          'Mauris consectetur dui sed dolor feugiat iaculis. Mauris vel erat semper, elementum nisl sed, dapibus justo.',
    );
  }
}
