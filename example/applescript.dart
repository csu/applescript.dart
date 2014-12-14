// Copyright (c) 2014, Christopher Su. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

library applescript.example;

import 'package:applescript/applescript.dart';

main() {
  AppleScript as = new AppleScript('tell application "Spotify" to playpause');
  as.run();
}
