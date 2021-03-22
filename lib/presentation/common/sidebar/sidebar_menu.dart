import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:redeflutter/data/app_model.dart';
import 'package:redeflutter/model/user.dart';
import 'package:redeflutter/presentation/common/avatar.dart';
import 'package:redeflutter/theme.dart';

import '../../../locator.dart';

class SidebarMenu extends StatefulWidget {
  SidebarMenu({Key key}) : super(key: key);

  @override
  _SidebarMenuState createState() => _SidebarMenuState();
}

class _SidebarMenuState extends State<SidebarMenu> {
  var appModel = locator<AppModel>();
  List<Widget> getMenuItems() {
    NetworkAccount network = appModel.selectedNetwork;
    List<MenuItem> subItems = [];
    subItems.addAll([
      MenuItem(
          title: "Messages",
          icon: Icon(Icons.chat_rounded, color: AppTheme.mediumGray),
          onPressed: () {}),
      MenuItem(
          title: "People",
          icon: Icon(Icons.book, color: AppTheme.mediumGray),
          onPressed: () {}),
      MenuItem(
          title: "Groups",
          icon: Icon(Icons.group, color: AppTheme.mediumGray),
          onPressed: () {}),
      MenuItem(
          title: "Resources",
          icon: Icon(Icons.folder, color: AppTheme.mediumGray),
          onPressed: () {}),
    ]);

    if (network.subscriberAccount.isShiftsGroupMember ||
        network.subscriberAccount.isShiftsApprover) {
      subItems.add(
        MenuItem(
            title: "Shifts",
            icon: Icon(Icons.forward_10, color: AppTheme.mediumGray),
            onPressed: () {}),
      );
    }
    if (network.settings.formsEnabled) {
      subItems.add(
        MenuItem(
            title: "Forms",
            icon: Icon(Icons.file_copy, color: AppTheme.mediumGray),
            onPressed: () {}),
      );
    }
    if (network.settings.passportEnabled) {
      subItems.add(
        MenuItem(
            title: "Passport",
            icon: Icon(Icons.file_copy_rounded, color: AppTheme.mediumGray),
            onPressed: () {}),
      );
    }
    return subItems
        .map(
          (item) => Container(
            color: Colors.white,
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Expanded(
              child: InkWell(
                onTap: item.onPressed,
                child: Row(
                  children: [
                    item.icon,
                    Text(
                      item.title,
                      style: AppTheme.sidebarMenuLink,
                    ),
                  ],
                ),
              ),
            ),
          ),
        )
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              Avatar(
                size: 40,
                url: NetworkImage(appModel.account.avatarUrl),
              ),
              Container(
                color: Colors.white,
                margin: EdgeInsets.only(left: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      appModel.account.name,
                      style: AppTheme.sidebarProfileName,
                    ),
                    Text(
                      "View Profile",
                      style: AppTheme.conversationSubjectText
                          .copyWith(fontStyle: FontStyle.italic, fontSize: 14),
                    ),
                  ],
                ),
              ),
            ],
          ),
          ...getMenuItems(),
        ],
      ),
    );
  }
}

class MenuItem {
  String title;
  Icon icon;
  Function onPressed;

  MenuItem({this.title, this.icon, this.onPressed});
}
