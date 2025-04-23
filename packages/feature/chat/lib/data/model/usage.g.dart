// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'usage.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Usage _$UsageFromJson(Map<String, dynamic> json) => Usage(
      promptTokens: (json['prompt_tokens'] as num).toInt(),
      completionTokens: (json['completion_tokens'] as num).toInt(),
      totalTokens: (json['total_tokens'] as num).toInt(),
      promptTokensDetails: PromptTokensDetails.fromJson(
          json['prompt_tokens_details'] as Map<String, dynamic>),
      completionTokensDetails: CompletionTokensDetails.fromJson(
          json['completion_tokens_details'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UsageToJson(Usage instance) => <String, dynamic>{
      'prompt_tokens': instance.promptTokens,
      'completion_tokens': instance.completionTokens,
      'total_tokens': instance.totalTokens,
      'prompt_tokens_details': instance.promptTokensDetails,
      'completion_tokens_details': instance.completionTokensDetails,
    };
