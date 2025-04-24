import 'package:chat/ui/chat_screen.dart';
import 'package:go_router/go_router.dart';

final chatRoutes = [
  GoRoute(
    path: ChatScreen.path,
    builder: (context, state) {
      return const ChatScreen();
    },
  ),
];
