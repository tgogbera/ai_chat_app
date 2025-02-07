import 'package:ai_chat_app/ui/chat_screen/widgets/chat_bubble.dart';
import 'package:ai_chat_app/ui/chat_screen/widgets/chat_text_field.dart';
import 'package:ai_chat_app/ui/shared/gradient_background.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  static const path = '/chat';

  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GradientBackground(
      child: SafeArea(
        bottom: true,
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            title: const Text('Chat'),
          ),
          body: Column(
            children: [
              Expanded(
                child: ListView(
                  padding: const EdgeInsets.all(16),
                  children: const [
                    ChatBubble(
                      message: 'Hey there! 👋 How can I help you today?',
                      isUser: false,
                    ),
                    ChatBubble(
                      message: 'I need help with my Flutter app 📱',
                      isUser: true,
                    ),
                    ChatBubble(
                      message: '''Let me assist you with that! 
I'm quite knowledgeable about Flutter development. 
What specific issue are you facing? 🤔''',
                      isUser: false,
                    ),
                    ChatBubble(
                      message: 'Thanks! I\'m having trouble with state management ✨',
                      isUser: true,
                    ),
                  ],
                ),
              ),
              ChatTextField(),
            ],
          ),
        ),
      ),
    );
  }
}
