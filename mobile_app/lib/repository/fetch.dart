import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:live_and_learn/repository/options.dart';
import 'package:live_and_learn/repository/path.dart';

Future<void> fetchRepository() async {
  final String target = joinPath([]);

  try {
    Response response = await Dio(dioBaseOptions).post(
      target,
      data: {},
    );

    print(response);
  } catch (err) {
    log(
      err,
      level: 2,
    );
    return null;
  }
}
