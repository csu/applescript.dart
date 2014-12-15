// Copyright (c) 2014, Christopher Su. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

library applescript.example;

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
  
  // Empty constructor
  AppleScript as3 = new AppleScript.empty();
  as3.script = 'tell application "Spotify" to set sound volume to (sound volume + 10)';
  as3.run();
}
