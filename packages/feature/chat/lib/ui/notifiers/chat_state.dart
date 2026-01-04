import 'package:chat/data/model/chat_choice.dart';

class ChatState {
  const ChatState({
    this.messages = const [],
    this.isLoading = false,
    this.error,
  });
  final List<ChatChoice> messages;
  final bool isLoading;
  final String? error;

  ChatState copyWith({
    List<ChatChoice>? messages,
    bool? isLoading,
    String? error,
  }) {
    return ChatState(
      messages: messages ?? this.messages,
      isLoading: isLoading ?? this.isLoading,
      error: error,
    );
  }
}
