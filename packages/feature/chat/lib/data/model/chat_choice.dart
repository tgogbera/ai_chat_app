import 'package:chat/data/model/chat_message.dart';
import 'package:json_annotation/json_annotation.dart';

part 'chat_choice.g.dart';

@JsonSerializable()
class ChatChoice {
  ChatChoice({
    required this.index,
    required this.message,
    required this.finishReason,
    this.logprobs,
  });

  factory ChatChoice.fromJson(Map<String, dynamic> json) => _$ChatChoiceFromJson(json);
  final int index;
  final ChatMessage message;
  final dynamic logprobs;

  @JsonKey(name: 'finish_reason')
  final String finishReason;
  Map<String, dynamic> toJson() => _$ChatChoiceToJson(this);
}
