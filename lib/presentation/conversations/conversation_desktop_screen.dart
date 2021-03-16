import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:redeflutter/presentation/common/sidebar/sidebar.dart';
import 'package:redeflutter/util/login_footer.dart';

import '../../theme.dart';

class DesktopConversationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;

    return Row(
      children: [
        // Once our width is less then 1300 then it start showing errors
        // Now there is no error if our width is less then 1340
        Expanded(
          flex: _size.width > 1340 ? 3 : 5,
          child: Sidebar(),
        ),
        Expanded(
          flex: _size.width > 1340 ? 4 : 6,
          child: Container(
            color: AppTheme.conversationListGray,
          ),
        ),
        Expanded(
          flex: _size.width > 1340 ? 6 : 8,
          child: Container(
            color: AppTheme.drawerBackground,
          ),
        ),
      ],
    );
  }
}
