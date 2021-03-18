import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../theme.dart';

AppBar getTitleBar(
    {String title = "",
    bool automaticallyImplyLeading = true,
    Widget titlebarFrontButton}) {
  return AppBar(
    backgroundColor: AppTheme.lightGray,
    elevation: 0,
    centerTitle: true,
    automaticallyImplyLeading: automaticallyImplyLeading,
    title: Row(
      children: [
        titlebarFrontButton != null ? titlebarFrontButton : Container(),
        Container(
          margin: EdgeInsets.only(left: 20),
          child: Text(
            title,
            style: TextStyle(color: Colors.black),
          ),
        ),
      ],
    ),
  );
}
