import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:redeflutter/data/app_model.dart';
import 'package:redeflutter/locator.dart';
import 'package:redeflutter/presentation/common/network_avatar.dart';
import 'package:redeflutter/routes.dart';
import 'package:redeflutter/theme.dart';

class NetworkSwitcher extends StatefulWidget {
  const NetworkSwitcher({Key key}) : super(key: key);

  @override
  _NetworkSwitcherState createState() => _NetworkSwitcherState();
}

class _NetworkSwitcherState extends State<NetworkSwitcher> {
  List<Widget> getNetworkIcons(AppModel appModel) {
    List<Widget> icons = [];
    if (appModel.networks != null)
      appModel.networks.forEach((network) {
        icons.add(Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                setState(() {
                  appModel.selectedNetwork = network;
                  Navigator.of(context).pushNamedAndRemoveUntil(
                      Routes.messages, (route) => false);
                });
              },
              child: Opacity(
                opacity: network.id == appModel.selectedNetwork.id ? 1 : .5,
                child: NetworkAvatar(url: network.avatarUrl),
              ),
            ),
          ],
        ));
      });
    return icons;
  }

  @override
  Widget build(BuildContext context) {
    var appModel = locator.get<AppModel>();
    return Container(
      color: AppTheme.lightGray,
      child: ListView(
        children: [
          ...getNetworkIcons(appModel),
          Icon(
            Icons.settings,
            size: 40,
            color: AppTheme.mediumGray,
          )
        ],
      ),
    );
  }
}
