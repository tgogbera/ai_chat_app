import 'package:flutter/material.dart';
import 'package:ai_chat_app/ui/shared/glass_morphic_container.dart';

class AssistantLoadingChatBubble extends StatelessWidget {
  const AssistantLoadingChatBubble({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width * 0.75,
        ),
        margin: const EdgeInsets.only(
          left: 16.0,
          right: 64.0,
          top: 8.0,
          bottom: 8.0,
        ),
        child: GlassMorphicContainer(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  width: 20,
                  height: 20,
                  child: CircularProgressIndicator(
                    strokeWidth: 2.5,
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.black87),
                  ),
                ),
                const SizedBox(width: 12),
                const Text(
                  'Assistant is typing...',
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 16.0,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
