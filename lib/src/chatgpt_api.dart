/// [ChatGptApi] Creates a new client wrapper around OpenAI's completion API using the unofficial(Temporary usage) ChatGPT model.

import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

class ChatGptApi {
  // Constants
  static const _baseUrl = 'https://api.openai.com/v1/completions';

  /// Generates text using OpenAI API
  /// prompt [String] The prompt text
  /// length [int] The maximum length of the generated text (default: 1000)
  /// [Future<String>] A Future function that resolves to the generated text
  ///
  Future<String> generateResponse(
      String prompt, int length, String apiKey) async {
    // Send the POST request to the OpenAI API
    final response = await http.post(
      Uri.parse(_baseUrl),
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $apiKey',
      },
      body: json.encode({
        'model': "text-davinci-003",
        'prompt': prompt,
        'temperature': 0,
        'max_tokens': length,
      }),
    );
    // Check if the request was successful
    if (response.statusCode == 200) {
      // Decode the response JSON
      final responseJson = json.decode(response.body);
      // Return the generated text
      return responseJson!['choices'][0]['text'];
    } else {
      // Throw an exception if the request failed
      throw Exception('Failed to generate text');
    }
  }
}
