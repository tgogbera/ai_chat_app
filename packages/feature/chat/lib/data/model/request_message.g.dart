// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RequestMessage _$RequestMessageFromJson(Map<String, dynamic> json) =>
    RequestMessage(
      role: json['role'] as String,
      content: json['content'] as String,
    );

Map<String, dynamic> _$RequestMessageToJson(RequestMessage instance) =>
    <String, dynamic>{
      'role': instance.role,
      'content': instance.content,
    };
