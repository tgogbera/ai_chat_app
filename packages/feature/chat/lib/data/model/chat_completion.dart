import 'chat_choice.dart';
import 'usage.dart';
import 'package:json_annotation/json_annotation.dart';

part 'chat_completion.g.dart';

@JsonSerializable()
class ChatCompletion {
  final String id;

  @JsonKey(name: 'object')
  final String objectType;

  final int created;
  final String model;
  final List<ChatChoice> choices;
  final Usage usage;

  @JsonKey(name: 'service_tier')
  final String serviceTier;

  @JsonKey(name: 'system_fingerprint')
  final String systemFingerprint;

  ChatCompletion({
    required this.id,
    required this.objectType,
    required this.created,
    required this.model,
    required this.choices,
    required this.usage,
    required this.serviceTier,
    required this.systemFingerprint,
  });

  factory ChatCompletion.fromJson(Map<String, dynamic> json) => _$ChatCompletionFromJson(json);
  Map<String, dynamic> toJson() => _$ChatCompletionToJson(this);
}





