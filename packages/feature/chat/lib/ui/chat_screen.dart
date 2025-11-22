import 'package:chat/ui/notifiers/chat_provider.dart';
import 'package:chat/ui/widgets/chat_bubble.dart';
import 'package:chat/ui/widgets/chat_text_field.dart';
import 'package:chat/ui/widgets/loading_chat_bubble.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ui_kit/widgets/gradient_background.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});
  static const path = '/chat';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        extendBodyBehindAppBar: true,
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
                const ChatTextField(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
