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
        margin: const EdgeInsets.only(left: 16.0, right: 64.0, top: 8.0, bottom: 8.0),
        child: GlassMorphicContainer(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(width: 20, height: 20, child: CircularProgressIndicator(strokeWidth: 2.5)),
                const SizedBox(width: 12),
                const Text('Assistant is typing...', style: TextStyle(fontSize: 16.0)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
