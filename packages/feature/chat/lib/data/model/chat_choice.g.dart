// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_choice.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChatChoice _$ChatChoiceFromJson(Map<String, dynamic> json) => ChatChoice(
  index: (json['index'] as num).toInt(),
  message: ChatMessage.fromJson(json['message'] as Map<String, dynamic>),
  logprobs: json['logprobs'],
  finishReason: json['finish_reason'] as String,
);

Map<String, dynamic> _$ChatChoiceToJson(ChatChoice instance) => <String, dynamic>{
  'index': instance.index,
  'message': instance.message,
  'logprobs': instance.logprobs,
  'finish_reason': instance.finishReason,
};
