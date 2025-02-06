import 'package:flutter/material.dart';
import 'package:ai_chat_app/ui/shared/glass_morphic_container.dart';

class ChatBubble extends StatelessWidget {
  final String message;
  final bool isUser;

  const ChatBubble({
    super.key,
    required this.message,
    required this.isUser,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isUser ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width * 0.75,
        ),
        margin: EdgeInsets.only(
          left: isUser ? 64.0 : 16.0,
          right: isUser ? 16.0 : 64.0,
          top: 8.0,
          bottom: 8.0,
        ),
        child: GlassMorphicContainer(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 12.0,
            ),
            child: Text(
              message,
              style: TextStyle(
                color: isUser ? Colors.white : Colors.black87,
                fontSize: 16.0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
