import 'package:chat/data/repository/repository.dart';
import 'chat_notifier.dart';
import 'chat_state.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

final chatNotifierProvider = NotifierProvider<ChatNotifier, ChatState>(
  () => ChatNotifier(Repository()),
);
