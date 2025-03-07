import 'package:ai_chat_app/ai_chat_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() async {
  await dotenv.load(fileName: '.env');

  runApp(ProviderScope(
    child: const AiChatApp(),
  ));
}
