import 'package:ui_kit/widgets/gradient_background.dart';

import 'notifiers/chat_provider.dart';
import 'widgets/chat_bubble.dart';
import 'widgets/chat_text_field.dart';
import 'widgets/loading_chat_bubble.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ChatScreen extends StatelessWidget {
  static const path = '/chat';

  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        appBar: AppBar(elevation: 0, title: const Text('Chat')),
        body: Stack(
          children: [
            const GradientBackground(child: SizedBox.expand()),
            Column(
              children: [
                Expanded(
                  child: Consumer(
                    builder: (context, ref, child) {
                      final chatState = ref.watch(chatNotifierProvider);

                      return ListView.builder(
                        itemCount: chatState.messages.length + (chatState.isLoading ? 1 : 0),
                        itemBuilder: (context, index) {
                          if (chatState.error != null) {
                            return Center(child: Text('Error: ${chatState.error}'));
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
          ],
        ),
      ),
    );
  }
}
