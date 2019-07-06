// Copyright 2017 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

void main() {
  var runApp = runApp(
    const Center(
      child: Text(
        'Instead run:\nflutter run lib/xxx.dart',
        textDirection: TextDirection.ltr,
      ),
    ),
  );
}
