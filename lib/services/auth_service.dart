import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:redeflutter/data/app_model.dart';
import 'package:redeflutter/locator.dart';
import 'package:redeflutter/model/user.dart';
import 'package:redeflutter/services/paths/auth_paths.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthService {
  var dio = locator.get<Dio>();
  var appModel = locator<AppModel>();

  Future<String> signIn(String email, String password) async {
    final tokenResp = await dio.post(AuthPaths.loginJWTPath(),
        data: {"username": email, "password": password});
    return tokenResp.data["token"];
  }

  Future<Account> getAccountInfo() async {
    Response resp = await dio.get(AuthPaths.accountPath());
    return Account.fromJson(resp.data['results'][0]);
  }

  Future<List<NetworkAccount>> getNetworks() async {
    Response resp =
        await dio.get(AuthPaths.networkAccountsPath(appModel.account.id));

    List<NetworkAccount> networks = [];

    resp.data.forEach((network) {
      networks.add(NetworkAccount.fromJson(network));
    });
    return networks;
  }

  Future<void> loadAccountAndNetworks() async {
    Account account = await this.getAccountInfo();
    appModel.account = account;

    List<NetworkAccount> networks = await this.getNetworks();
    appModel.networks = networks;
    appModel.selectedNetwork = networks[0];
  }
}
