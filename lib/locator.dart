import 'dart:io';

import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get_it/get_it.dart';
import 'package:redeflutter/data/app_model.dart';
import 'package:redeflutter/services/auth_service.dart';
import 'package:redeflutter/services/messaging_service.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerSingleton<AppModel>(AppModel());

  BaseOptions options = new BaseOptions(
    baseUrl: env['API_URL'],
  );
  Dio dio = new Dio(options);
  dio.interceptors.add(InterceptorsWrapper(onRequest:
      (RequestOptions options, RequestInterceptorHandler handler) async {
    // to prevent other request enter this interceptor.
    dio.interceptors.requestLock.lock();
    // We use a new Dio(to avoid dead lock) instance to request token.
    //Set the cookie to headers
    var token = locator.get<AppModel>().aToken;
    if (token != null && token != "") {
      options.headers["Authorization"] = "Bearer $token";
    }
    dio.interceptors.requestLock.unlock();
    handler.next(options); //continue
  }));

  locator.registerSingleton<Dio>(dio);
  locator.registerLazySingleton<AuthService>(() => AuthService());
  locator.registerLazySingleton<MessagingService>(() => MessagingService());
}
