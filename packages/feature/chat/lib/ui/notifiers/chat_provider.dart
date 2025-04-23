import 'package:chat/data/repository/repository.dart';
import 'chat_notifier.dart';
import 'chat_state.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

final repositoryProvider = Provider<Repository>((ref) {
  return Repository();
});

final chatNotifierProvider = StateNotifierProvider<ChatNotifier, ChatState>((ref) {
  final repository = ref.watch(repositoryProvider);
  return ChatNotifier(repository);
});
