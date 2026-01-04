import 'package:flutter/material.dart';
import 'package:ui_kit/widgets/glass_morphic_container.dart';

class AssistantLoadingChatBubble extends StatelessWidget {
  const AssistantLoadingChatBubble({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.75),
        margin: const EdgeInsets.only(left: 16, right: 64, top: 8, bottom: 8),
        child: const GlassMorphicContainer(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(width: 20, height: 20, child: CircularProgressIndicator(strokeWidth: 2.5)),
                SizedBox(width: 12),
                Text('Assistant is typing...', style: TextStyle(fontSize: 16)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
