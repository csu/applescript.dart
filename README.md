# applescript

A library for executing AppleScript in Dart.

## Usage

A simple usage example:

    import 'package:applescript/applescript.dart';

	main() {
	  AppleScript as = new AppleScript('tell application "Spotify" to playpause');
	  as.run();
	}

## Features and bugs

Please file feature requests and bugs at the [issue tracker][tracker].

[tracker]: https://github.com/csu/applescript.dart/issues
