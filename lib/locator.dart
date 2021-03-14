import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get_it/get_it.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:cookie_jar/cookie_jar.dart';

import 'package:redeflutter/data/app_model.dart';
import 'package:redeflutter/services/auth_service.dart';

GetIt locator = GetIt.instance;

_parseAndDecode(String response) {
  return jsonDecode(response);
}

parseJson(String text) {
  return compute(_parseAndDecode, text);
}

void setupLocator() {
  BaseOptions options = new BaseOptions(
    baseUrl: env['baseUrl'],
  );
  Dio dio = new Dio(options);
  var cookieJar = CookieJar();
  dio.interceptors.add(CookieManager(cookieJar));
  locator.registerSingleton<Dio>(dio);
  locator.registerSingleton<AppModel>(AppModel());
  locator.registerLazySingleton<AuthService>(() => AuthService());
}
