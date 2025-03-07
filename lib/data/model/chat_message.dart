import 'package:json_annotation/json_annotation.dart';

part 'chat_message.g.dart';

@JsonSerializable()
class ChatMessage {
  final String role;
  final String content;
  final dynamic refusal;

  ChatMessage({
    required this.role,
    required this.content,
    this.refusal,
  });

  factory ChatMessage.fromJson(Map<String, dynamic> json) => _$ChatMessageFromJson(json);
  Map<String, dynamic> toJson() => _$ChatMessageToJson(this);
}
