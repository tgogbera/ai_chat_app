import 'dart:async';

import 'package:ai_chat_app/ai_chat_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() async {
  await runZonedGuarded(() async {
    WidgetsFlutterBinding.ensureInitialized();
    await dotenv.load();

    runApp(
      const ProviderScope(
        child: AiChatApp(),
      ),
    );
  }, (error, stackTrace) {
    // Handle uncaught errors here, e.g., log them to an error reporting service
    debugPrint('Uncaught error: $error');
    debugPrint('Stack trace: $stackTrace');
  });
}
