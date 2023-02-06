/// Note: Pass API Key in the [apiKey] parameter of [ChatGptApi].

import 'package:chatgptapi/chatgptapi.dart';

void main() async {
  final api = ChatGptApi();
  String apiKey = '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';
  String prompt = 'Say some facts on flutter framework';
  int length = 500;

  try {
    String generatedResponse =
        await api.generateResponse(prompt, length, apiKey);
    print(generatedResponse);
  } catch (e) {
    print(e);
  }
}
