class AuthPaths {
  static const PATH_API = "api";
  static const PATH_AUTH = "auth";
  static const PATH_VERSION = "v1";
  static const PATH_BEARER = "bearer";
  static const PATH_LOGIN = "login";
  static const PATH_ACCOUNTS = "accounts";
  static const PATH_NETWORKS = "networks";

  static String loginJWTPath() {
    return "/$PATH_API/$PATH_AUTH/$PATH_VERSION/$PATH_BEARER/$PATH_LOGIN/";
  }

  static String networkAccountsPath(String accountId) {
    return "/$PATH_API/$PATH_NETWORKS/$PATH_VERSION/$PATH_ACCOUNTS/$accountId/$PATH_NETWORKS";
  }

  static String accountPath() {
    return "/$PATH_API/$PATH_ACCOUNTS/$PATH_VERSION/$PATH_ACCOUNTS";
  }
}
