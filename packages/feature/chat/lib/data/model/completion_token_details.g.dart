// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'completion_token_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CompletionTokensDetails _$CompletionTokensDetailsFromJson(
        Map<String, dynamic> json) =>
    CompletionTokensDetails(
      reasoningTokens: (json['reasoning_tokens'] as num).toInt(),
      audioTokens: (json['audio_tokens'] as num).toInt(),
      acceptedPredictionTokens:
          (json['accepted_prediction_tokens'] as num).toInt(),
      rejectedPredictionTokens:
          (json['rejected_prediction_tokens'] as num).toInt(),
    );

Map<String, dynamic> _$CompletionTokensDetailsToJson(
        CompletionTokensDetails instance) =>
    <String, dynamic>{
      'reasoning_tokens': instance.reasoningTokens,
      'audio_tokens': instance.audioTokens,
      'accepted_prediction_tokens': instance.acceptedPredictionTokens,
      'rejected_prediction_tokens': instance.rejectedPredictionTokens,
    };
