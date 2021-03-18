import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:redeflutter/data/app_model.dart';
import 'package:redeflutter/presentation/common/title_bar.dart';
import 'package:redeflutter/presentation/messaging/conversation/message_thread.dart';

import '../../../locator.dart';

class ConversationScreen extends StatefulWidget {
  ConversationScreen({Key key}) : super(key: key);

  @override
  _ConversationScreenState createState() => _ConversationScreenState();
}

class _ConversationScreenState extends State<ConversationScreen> {
  var appModel = locator<AppModel>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getTitleBar(
          title: appModel.selectedConversation.participantProfile.name),
      body: MessageThread(),
    );
  }
}
