// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prompt_token_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PromptTokensDetails _$PromptTokensDetailsFromJson(Map<String, dynamic> json) => PromptTokensDetails(
  cachedTokens: (json['cached_tokens'] as num).toInt(),
  audioTokens: (json['audio_tokens'] as num).toInt(),
);

Map<String, dynamic> _$PromptTokensDetailsToJson(PromptTokensDetails instance) => <String, dynamic>{
  'cached_tokens': instance.cachedTokens,
  'audio_tokens': instance.audioTokens,
};
