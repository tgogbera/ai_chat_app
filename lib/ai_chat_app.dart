import 'package:ai_chat_app/routing/app_router.dart';
import 'package:flutter/material.dart';

class AiChatApp extends StatelessWidget {
  const AiChatApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData.dark(
        useMaterial3: true,
      ),
      routerConfig: AppRouter().getRouter(),
    );
  }
}
