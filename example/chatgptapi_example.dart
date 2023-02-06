/// Note: Pass API Key in the [apiKey] parameter of [ChatGptApi].

import 'package:chatgptapi/chatgptapi.dart';

void main() async {
  final api = ChatGptApi();
  String apiKey = 'YOUR_API_KEY';
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
