// providers.dart
import 'package:ai_chat_app/data/repository/repository.dart';
import 'package:ai_chat_app/presentation/chat_screen/notifiers/chat_notifier.dart';
import 'package:ai_chat_app/presentation/chat_screen/notifiers/chat_state.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

final repositoryProvider = Provider<Repository>((ref) {
  return Repository();
});

final chatNotifierProvider = StateNotifierProvider<ChatNotifier, ChatState>((ref) {
  final repository = ref.watch(repositoryProvider);
  return ChatNotifier(repository);
});
