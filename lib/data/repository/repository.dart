import 'package:ai_chat_app/core/network/api_client.dart';
import 'package:ai_chat_app/data/model/chat_choice.dart';
import 'package:ai_chat_app/data/model/chat_completion.dart';
import 'package:ai_chat_app/data/repository/interface_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'repository.g.dart';

final class Repository implements InterfaceRepository {
  final _apiClient = ApiClient();

  final _completionPath = '/chat/completions';

  @override
  Future<List<ChatChoice>> sendMessage(String message) async {
    try {
      final response = await _apiClient.post(
        _completionPath,
        data: {
          "model": "gpt-4o",
          "messages": [
            {
              "role": "user",
              "content": message,
            }
          ]
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

@riverpod
Repository repository(Ref ref) {
  return Repository();
}

@riverpod
Future<List<ChatChoice>> sendMessage(Ref ref, String message) async {
  return await ref.read(repositoryProvider).sendMessage(message);
}
