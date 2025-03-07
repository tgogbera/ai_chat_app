import 'package:ai_chat_app/ai_chat_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(ProviderScope(
    child: const AiChatApp(),
  ));
}
