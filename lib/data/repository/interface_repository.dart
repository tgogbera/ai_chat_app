import 'package:ai_chat_app/data/model/chat_choice.dart';

abstract interface class InterfaceRepository {
  Future<List<ChatChoice>> sendMessage(String messsage);
}
