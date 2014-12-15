# applescript

A library for executing AppleScript in Dart.

## Usage

A simple usage example:

```dart
import 'package:applescript/applescript.dart';
import 'dart:io'; // required for results callback

main() {
  // Example
  AppleScript as = new AppleScript('tell application "Spotify" to playpause');
  as.run();
  
  // Example with Results Callback
  printResults(ProcessResult results) {
    print(results.stdout);
  }
  
  AppleScript as2 = new AppleScript.results('do shell script "echo Hello World"', printResults);
  as2.run();
}
```

## Features and bugs

Please file feature requests and bugs at the [issue tracker][tracker].

[tracker]: https://github.com/csu/applescript.dart/issues
