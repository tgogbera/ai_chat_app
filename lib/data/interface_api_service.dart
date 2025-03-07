import 'package:ai_chat_app/data/model/chat_completion.dart';

abstract interface class InterfaceApiService {
  Future<ChatCompletion> sendMessage(String messsage);
}
