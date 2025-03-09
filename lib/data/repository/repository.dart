import 'package:ai_chat_app/core/network/api_client.dart';
import 'package:ai_chat_app/data/model/chat_choice.dart';
import 'package:ai_chat_app/data/model/chat_completion.dart';
import 'package:ai_chat_app/data/model/request_message.dart';
import 'package:ai_chat_app/data/repository/interface_repository.dart';

final class Repository implements InterfaceRepository {
  final _apiClient = ApiClient();

  final _completionPath = '/chat/completions';

  @override
  Future<List<ChatChoice>> sendMessage(List<RequestMessage> messages) async {
    try {
      final response = await _apiClient.post(
        _completionPath,
        data: {
          "model": "gpt-4o",
          "messages": messages.map((e) => e.toJson()).toList(),
        },
      );

      final data = response.data;

      if (data is! Map<String, dynamic>) {
        throw Exception('Failed to send message');
      }

      final messageCompletions = ChatCompletion.fromJson(data);
      return messageCompletions.choices;
    } on Exception catch (e) {
      throw Exception('Failed to send message: $e');
    }
  }
}
