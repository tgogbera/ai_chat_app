import 'package:json_annotation/json_annotation.dart';

part 'prompt_token_details.g.dart';

@JsonSerializable()
class PromptTokensDetails {
  @JsonKey(name: 'cached_tokens')
  final int cachedTokens;

  @JsonKey(name: 'audio_tokens')
  final int audioTokens;

  PromptTokensDetails({
    required this.cachedTokens,
    required this.audioTokens,
  });

  factory PromptTokensDetails.fromJson(Map<String, dynamic> json) =>
      _$PromptTokensDetailsFromJson(json);
  Map<String, dynamic> toJson() => _$PromptTokensDetailsToJson(this);
}