/// [ChatGptApi] Creates a new client wrapper around OpenAI's completion API using the unofficial(Temporary usage) ChatGPT model.

import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

class ChatGptApi {
  String apiKey;
  ChatGptApi({required this.apiKey});

  // Constants
  static const _baseUrl =
      'https://api.openai.com/v1/engines/davinci/text-davinci-003';

  /// Generates text using OpenAI API
  /// prompt [String] The prompt text
  /// length [int] The maximum length of the generated text (default: 1000)
  /// [Future<String>] A Future function that resolves to the generated text
  ///
  Future<String> generateResponse(String prompt, {int length = 1000}) async {
    // Send the POST request to the OpenAI API
    final response = await http.post(
      Uri.parse('$_baseUrl jobs'),
      headers: {
        'Authorization': 'Bearer $apiKey',
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'prompt': prompt,
        'max_tokens': length,
        'temperature': 0.5,
      }),
    );

    // Check if the request was successful
    if (response.statusCode == 200) {
      // Decode the response JSON
      final responseJson = json.decode(response.body);
      // Return the generated text
      return responseJson['choices'][0]['text'];
    } else {
      // Throw an exception if the request failed
      throw Exception('Failed to generate text');
    }
  }
}
