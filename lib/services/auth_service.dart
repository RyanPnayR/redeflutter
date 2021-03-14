import 'dart:convert';
import 'dart:io';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:redeflutter/model/user.dart';
import 'package:redeflutter/services/paths/auth_paths.dart';
import "package:http/http.dart" as http;

class AuthService {
  Future<JwtToken> signIn(String email, String password) async {
    var client = HttpClient();

    final jwt =
        client.post("https://qa.redeapp.com", null, AuthPaths.loginJWTPath());
    jwt.da
    return JwtToken(jsonDecode(jwt.body));
  }

  Future<Account> getAccountInfo(JwtToken token) async {
    if (token == null) return Future.value(null);

    return Account(jsonDecode((await http
            .get(AuthPaths.accountPath(), headers: {"Cookie": token.token}))
        .body[0]));
  }
}
