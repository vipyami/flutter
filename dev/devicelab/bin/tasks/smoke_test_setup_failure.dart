// Copyright 2016 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:async';

/// Creates a situation when the test framework was not properly initialized.
///
/// By not calling `task()` the VM service extension is not registered and
/// therefore will not accept requests to run tasks. When the runner attempts to
/// connect and run the test it will receive a "method not found" error from the
/// VM service, will likely retry and finally time out.
Future<void> main() async {}
