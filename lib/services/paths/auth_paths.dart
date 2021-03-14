import 'package:flutter_dotenv/flutter_dotenv.dart';

class AuthPaths {
  static const PATH_API = "api";
  static const PATH_AUTH = "auth";
  static const PATH_V1 = "v1";
  static const PATH_BEARER = "bearer";
  static const PATH_LOGIN = "login";
  static const PATH_ACCOUNTS = "accounts";
  static const PATH_NETWORKS = "networks";

  static String loginJWTPath() {
    return "/$PATH_API/$PATH_AUTH/$PATH_V1/$PATH_BEARER/$PATH_LOGIN/";
  }

  static String networkAccountsPath(String accountId) {
    return "/$PATH_API/$PATH_NETWORKS/$PATH_V1/$PATH_ACCOUNTS/$accountId/$PATH_NETWORKS";
  }

  static String accountPath() {
    return "https://qa.redeapp.com/$PATH_API/$PATH_ACCOUNTS/$PATH_V1/$PATH_ACCOUNTS";
  }
}
