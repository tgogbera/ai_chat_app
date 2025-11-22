import 'package:chat/data/model/chat_choice.dart';
import 'package:chat/data/model/request_message.dart';

abstract interface class InterfaceRepository {
  Future<List<ChatChoice>> sendMessage(List<RequestMessage> messsage);
}
