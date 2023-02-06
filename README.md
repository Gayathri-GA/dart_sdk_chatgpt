## Dart ChatGPT API
A Dart package provides an API wrapper around OpenAI’s text completion API using the ChatGPT model using dart.

## Features
* Generate text with a provided prompt.
* Customizable text length with length parameter.

## Requirements
* A valid API key for the OpenAI Chat gpt api. Get your API Key [here](https://platform.openai.com/account/api-keys).
  
## Implementation details

The package uses the HTTP post method to make a request to the OpenAI API with the provided prompt and length (as max_tokens). The API key is passed using apiKey parameter in the ChatGptApi function.

## Usage

### Import the package:

```dart
import 'package:chatgpt_api/chatgpt_api.dart';
```
### Generate text function

```dart
final api = ChatGptApi();
String apiKey = 'YOUR_API_KEY'; // Copy and paste your api key here.
String prompt = 'Say some facts on flutter framework';
int length = 500;
String generatedResponse = api.generateResponse(prompt, length, apiKey);
print(generatedResponse);
```

  
