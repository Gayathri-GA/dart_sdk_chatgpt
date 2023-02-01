/// It checks if the fetch function is available in the global scope, and if it is, it exports it as a named export.

import 'dart:html';

final fetch = window.fetch;

// if (fetch == null || !(fetch is Function)) {
//   throw Exception('Invalid environment: global fetch not defined');
// }

// export 'fetch.dart';