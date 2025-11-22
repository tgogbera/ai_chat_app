import 'package:chat/data/model/chat_choice.dart';
import 'package:chat/data/model/chat_message.dart';
import 'package:chat/data/model/request_message.dart';
import 'package:chat/data/repository/interface_repository.dart';
import 'package:chat/ui/notifiers/chat_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ChatNotifier extends StateNotifier<ChatState> {
  ChatNotifier(this._repository) : super(const ChatState());
  final InterfaceRepository _repository;

  Future<void> sendMessage(String message) async {
    if (message.isEmpty) return;

    try {
      final userMessage = ChatChoice(
        index: state.messages.length,
        message: ChatMessage(role: 'user', content: message),
        finishReason: 'stop',
      );

      state = state.copyWith(messages: [...state.messages, userMessage], isLoading: true);

      final requestMessages =
          state.messages
              .map(
                (choice) =>
                    RequestMessage(role: choice.message.role, content: choice.message.content),
              )
              .toList();

      final choices = await _repository.sendMessage(requestMessages);

      state = state.copyWith(
        messages: [...state.messages, ...choices],
        isLoading: false,
      );
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        error: 'Failed to get response: ${e.toString().split(':').last}',
      );
    }
  }
}
