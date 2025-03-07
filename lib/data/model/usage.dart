import 'package:ai_chat_app/data/model/completion_token_details.dart';
import 'package:ai_chat_app/data/model/prompt_token_details.dart';
import 'package:json_annotation/json_annotation.dart';

part 'usage.g.dart';

@JsonSerializable()
class Usage {
  @JsonKey(name: 'prompt_tokens')
  final int promptTokens;

  @JsonKey(name: 'completion_tokens')
  final int completionTokens;

  @JsonKey(name: 'total_tokens')
  final int totalTokens;

  @JsonKey(name: 'prompt_tokens_details')
  final PromptTokensDetails promptTokensDetails;

  @JsonKey(name: 'completion_tokens_details')
  final CompletionTokensDetails completionTokensDetails;

  Usage({
    required this.promptTokens,
    required this.completionTokens,
    required this.totalTokens,
    required this.promptTokensDetails,
    required this.completionTokensDetails,
  });

  factory Usage.fromJson(Map<String, dynamic> json) => _$UsageFromJson(json);
  Map<String, dynamic> toJson() => _$UsageToJson(this);
}
