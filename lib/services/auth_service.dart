import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:redeflutter/locator.dart';
import 'package:redeflutter/model/user.dart';
import 'package:redeflutter/services/paths/auth_paths.dart';

class AuthService {
  var dio = locator.get<Dio>();

  Future<String> signIn(String email, String password) async {
    final jwt = await dio.post(AuthPaths.loginJWTPath(),
        data: {"username": email, "password": password});
    return jwt.data["token"];
  }

  Future<Account> getAccountInfo(JwtToken token) async {
    if (token == null) return Future.value(null);
    Response resp = await dio.get(AuthPaths.accountPath());
    return Account(resp.data[0]);
  }
}
