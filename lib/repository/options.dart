import 'package:dio/dio.dart';

final BaseOptions dioBaseOptions = BaseOptions(
  connectTimeout: 5000,
);

Future<Options> getDioOptions() async {
  return Options();
}
