import 'package:json_annotation/json_annotation.dart';

part 'request_message.g.dart';

@JsonSerializable()
class RequestMessage {
  final String role;
  final String content;

  RequestMessage({
    required this.role,
    required this.content,
  });

  factory RequestMessage.fromJson(Map<String, dynamic> json) => _$RequestMessageFromJson(json);

  Map<String, dynamic> toJson() => _$RequestMessageToJson(this);
}
