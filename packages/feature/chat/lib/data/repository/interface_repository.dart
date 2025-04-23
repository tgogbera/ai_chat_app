import '../model/chat_choice.dart';
import '../model/request_message.dart';

abstract interface class InterfaceRepository {
  Future<List<ChatChoice>> sendMessage(List<RequestMessage> messsage);
}
