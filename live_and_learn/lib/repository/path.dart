import 'dart:io';

import 'package:flutter/foundation.dart';

String getPath() {
  if (kReleaseMode) {
    return 'http://localhost:4000/devl';
  }
  if (Platform.isAndroid) {
    return 'http://10.0.2.2:4000/devl';
  }
  return 'http://localhost:4000/devl';
}

String joinPath(List<String> paths) {
  return getPath() + '/' + paths.join('/');
}
