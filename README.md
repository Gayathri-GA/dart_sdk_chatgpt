## Dart ChatGPT API
A Dart package provides an API wrapper around OpenAI’s text completion API using the ChatGPT model using dart.

## Features
* Generate text with a provided prompt.
* Customizable text length with length parameter (default: 1000).

## Usage

### Import the package:

```dart
import 'package:chatgpt_api/chatgpt_api.dart';
```
### Generate text:

```dart
final api = ChatGptApi(apiKey: '');
String prompt = 'Things to consider for effective article publication';
int length = 500;
api.generateResponse(prompt, length: length).then((text) => print(text));
```
## Implementation details

The package uses the HTTP post method to make a request to the OpenAI API with the provided prompt and length (as max_tokens). The API key is passes using apiKey parameter in the ChatGptApi function.

## Requirements
* A valid API key for the OpenAI Chat gpt api.
  
## Note
Pass API Key in the [apiKey] parameter of [ChatGptApi].
