import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:redeflutter/presentation/common/sidebar/network_switcher.dart';
import 'package:redeflutter/presentation/common/sidebar/sidebar_menu.dart';
import 'package:redeflutter/util/login_footer.dart';

import '../../../theme.dart';

class Sidebar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;

    return Row(
      children: [
        // Once our width is less then 1300 then it start showing errors
        // Now there is no error if our width is less then 1340
        Expanded(
          flex: 3,
          child: NetworkSwitcher(),
        ),
        Expanded(
          flex: 8,
          child: Container(
            color: Colors.white,
            padding: EdgeInsets.only(
              top: 20,
              left: 15,
            ),
            child: Column(
              children: [SidebarMenu()],
            ),
          ),
        ),
      ],
    );
  }
}
