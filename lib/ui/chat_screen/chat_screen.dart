import 'package:ai_chat_app/ui/chat_screen/notifiers/chat_provider.dart';
import 'package:ai_chat_app/ui/chat_screen/widgets/chat_bubble.dart';
import 'package:ai_chat_app/ui/chat_screen/widgets/chat_text_field.dart';
import 'package:ai_chat_app/ui/chat_screen/widgets/loading_chat_bubble.dart';
import 'package:ai_chat_app/ui/shared/gradient_background.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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
                child: Consumer(
                  builder: (context, ref, child) {
                    final chatState = ref.watch(chatNotifierProvider);

                    return ListView.builder(
                      itemCount: chatState.messages.length + (chatState.isLoading ? 1 : 0),
                      itemBuilder: (context, index) {
                        if (chatState.error != null) {
                          return Center(
                            child: Text('Error: ${chatState.error}'),
                          );
                        }

                        if (chatState.isLoading && index == chatState.messages.length) {
                          return const AssistantLoadingChatBubble();
                        }

                        final message = chatState.messages[index];
                        return ChatBubble(
                          message: message.message.content,
                          isUser: message.message.role == 'user',
                        );
                      },
                    );
                  },
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
