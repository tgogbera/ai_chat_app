import 'package:ai_chat_app/data/model/chat_choice.dart';
import 'package:ai_chat_app/data/model/request_message.dart';

abstract interface class InterfaceRepository {
  Future<List<ChatChoice>> sendMessage(List<RequestMessage> messsage);
}
