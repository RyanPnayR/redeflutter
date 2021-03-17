import 'package:flutter/cupertino.dart';
import 'package:redeflutter/theme.dart';

class SidebarMenu extends StatefulWidget {
  SidebarMenu({Key key}) : super(key: key);

  @override
  _SidebarMenuState createState() => _SidebarMenuState();
}

class _SidebarMenuState extends State<SidebarMenu> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppTheme.drawerBackground,
    );
  }
}
