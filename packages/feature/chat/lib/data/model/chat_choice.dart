import 'chat_message.dart';
import 'package:json_annotation/json_annotation.dart';

part 'chat_choice.g.dart';

@JsonSerializable()
class ChatChoice {
  final int index;
  final ChatMessage message;
  final dynamic logprobs;

  @JsonKey(name: 'finish_reason')
  final String finishReason;

  ChatChoice({
    required this.index,
    required this.message,
    this.logprobs,
    required this.finishReason,
  });

  factory ChatChoice.fromJson(Map<String, dynamic> json) => _$ChatChoiceFromJson(json);
  Map<String, dynamic> toJson() => _$ChatChoiceToJson(this);
}
