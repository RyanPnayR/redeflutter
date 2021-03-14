import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:redeflutter/data/app_model.dart';
import 'package:redeflutter/locator.dart';
import 'package:redeflutter/model/user.dart';
import 'package:redeflutter/services/paths/auth_paths.dart';

class AuthService {
  var dio = locator.get<Dio>();

  Future<String> signIn(String email, String password) async {
    final jwt = await dio.post(AuthPaths.loginJWTPath(),
        data: {"username": email, "password": password});
    AppModel am = locator.get<AppModel>();
    am.aToken = jwt.data["token"];
    return jwt.data["token"];
  }

  Future<Account> getAccountInfo(JwtToken token) async {
    if (token == null) return Future.value(null);
    Response resp = await dio.get(AuthPaths.accountPath());
    return Account.fromJson(resp.data['results'][0]);
  }
}
