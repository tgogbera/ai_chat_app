// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_completion.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChatCompletion _$ChatCompletionFromJson(Map<String, dynamic> json) =>
    ChatCompletion(
      id: json['id'] as String,
      objectType: json['object'] as String,
      created: (json['created'] as num).toInt(),
      model: json['model'] as String,
      choices: (json['choices'] as List<dynamic>)
          .map((e) => ChatChoice.fromJson(e as Map<String, dynamic>))
          .toList(),
      usage: Usage.fromJson(json['usage'] as Map<String, dynamic>),
      serviceTier: json['service_tier'] as String,
      systemFingerprint: json['system_fingerprint'] as String,
    );

Map<String, dynamic> _$ChatCompletionToJson(ChatCompletion instance) =>
    <String, dynamic>{
      'id': instance.id,
      'object': instance.objectType,
      'created': instance.created,
      'model': instance.model,
      'choices': instance.choices,
      'usage': instance.usage,
      'service_tier': instance.serviceTier,
      'system_fingerprint': instance.systemFingerprint,
    };
