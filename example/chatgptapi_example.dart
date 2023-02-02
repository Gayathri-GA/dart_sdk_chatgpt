/// Note: Pass API Key in the [apiKey] parameter of [ChatGptApi].

import 'package:chatgptapi/chatgptapi.dart';

void main() async {
  final api = ChatGptApi(apiKey: '');
  String prompt = 'Things to consider for effective article publication';
  int length = 500;

  try {
    String generatedResponse =
        await api.generateResponse(prompt, length: length);
    print(generatedResponse);
  } catch (e) {
    print(e);
  }
}
