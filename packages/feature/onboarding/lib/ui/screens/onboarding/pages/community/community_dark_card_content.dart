import 'package:flutter/material.dart';
import 'package:onboarding/constants/constants.dart';

class CommunityDarkCardContent extends StatelessWidget {
  const CommunityDarkCardContent({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Padding(
          padding: EdgeInsets.only(top: paddingL),
          child: Icon(Icons.brush, size: 32, color: Colors.white),
        ),
        Padding(
          padding: EdgeInsets.only(top: paddingL),
          child: Icon(Icons.camera_alt, size: 32, color: Colors.white),
        ),
        Padding(
          padding: EdgeInsets.only(top: paddingL),
          child: Icon(Icons.straighten, size: 32, color: Colors.white),
        ),
      ],
    );
  }
}
