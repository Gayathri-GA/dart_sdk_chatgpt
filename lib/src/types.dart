/// It holds all the classes and enums used across the different classes in the package.

import 'dart:async';

enum Role { user, assistant }

class SendMessageOptions {
  late String conversationId;
  late String parentMessageId;
  late String messageId;
  late bool stream;
  late String promptPrefix;
  late String promptSuffix;
  late int timeoutMs;
  late Function(ChatMessage) onProgress;
  dynamic abortSignal;
}

class ChatMessage {
  late String id;
  late String text;
  late Role role;
  late String parentMessageId;
  late String conversationId;
}

class ChatGPTError extends Error {
  int statusCode;
  String statusText;
  ChatGPTError(this.statusCode, this.statusText);
}

typedef GetMessageByIdFunction = Future<ChatMessage> Function(String id);

typedef UpsertMessageFunction = Future<void> Function(ChatMessage message);

class Openai {
  static dynamic completionParams(
      {String? model,
      String? prompt,
      String? suffix,
      int? maxTokens,
      double? temperature,
      double? topP,
      int? logprobs,
      bool? echo,
      List<String>? stop,
      double? presencePenalty,
      double? frequencyPenalty,
      int? bestOf}) {}
}
