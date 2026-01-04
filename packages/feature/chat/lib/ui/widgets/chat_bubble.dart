import 'package:flutter/material.dart';
import 'package:ui_kit/widgets/glass_morphic_container.dart';

class ChatBubble extends StatelessWidget {
  const ChatBubble({required this.message, required this.isUser, super.key});
  final String message;
  final bool isUser;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isUser ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.75),
        margin: EdgeInsets.only(
          left: isUser ? 64.0 : 16.0,
          right: isUser ? 16.0 : 64.0,
          top: 8,
          bottom: 8,
        ),
        child: GlassMorphicContainer(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: Text(message, style: const TextStyle(fontSize: 16)),
          ),
        ),
      ),
    );
  }
}
