// Copyright (c) 2014, Christopher Su. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

library applescript.base;

import 'dart:io';

class AppleScript {
  String script;
  Function resultsCallback;
  
  AppleScript.empty();
  AppleScript(this.script);
  AppleScript.results(this.script, this.resultsCallback);
  
  run() {
    if (script != null) {
      Process.run('osascript', ['-e', script]).then((ProcessResult results) {
        if (resultsCallback != null) {
          resultsCallback(results);
        }
      });
    }
  }
}