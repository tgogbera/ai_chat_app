import 'package:json_annotation/json_annotation.dart';

part 'completion_token_details.g.dart';

@JsonSerializable()
class CompletionTokensDetails {
  CompletionTokensDetails({
    required this.reasoningTokens,
    required this.audioTokens,
    required this.acceptedPredictionTokens,
    required this.rejectedPredictionTokens,
  });

  factory CompletionTokensDetails.fromJson(Map<String, dynamic> json) =>
      _$CompletionTokensDetailsFromJson(json);
  @JsonKey(name: 'reasoning_tokens')
  final int reasoningTokens;

  @JsonKey(name: 'audio_tokens')
  final int audioTokens;

  @JsonKey(name: 'accepted_prediction_tokens')
  final int acceptedPredictionTokens;

  @JsonKey(name: 'rejected_prediction_tokens')
  final int rejectedPredictionTokens;
  Map<String, dynamic> toJson() => _$CompletionTokensDetailsToJson(this);
}
