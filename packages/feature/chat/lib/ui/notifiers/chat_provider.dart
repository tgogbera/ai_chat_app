import 'package:chat/data/repository/repository.dart';
import 'package:chat/ui/notifiers/chat_notifier.dart';
import 'package:chat/ui/notifiers/chat_state.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

final chatNotifierProvider = NotifierProvider<ChatNotifier, ChatState>(
  () => ChatNotifier(Repository()),
);
