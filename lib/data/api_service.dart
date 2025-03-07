import 'package:ai_chat_app/core/network/api_client.dart';
import 'package:ai_chat_app/data/interface_api_service.dart';
import 'package:ai_chat_app/data/model/chat_completion.dart';

final class ApiService implements InterfaceApiService {
  final _apiClient = ApiClient();

  final _completionPath = '/chat/completions';

  @override
  Future<ChatCompletion> sendMessage(String messsage) async {
    try {
      final response = await _apiClient.post(
        _completionPath,
        data: {
          "model": "gpt-4o",
          "messages": [
            {
              "role": "user",
              "content": messsage,
            }
          ]
        },
      );

      if (response is! Map<String, dynamic>) {
        throw Exception('Failed to send message');
      }

      try {
        return ChatCompletion.fromJson(response as Map<String, dynamic>);
      } catch (e) {
        throw Exception('Failed to parse response: $e');
      }
    } on Exception catch (e) {
      throw Exception('Failed to send message: $e');
    }
  }
}
