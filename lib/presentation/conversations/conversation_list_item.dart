import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:redeflutter/model/messaging.dart';
import 'package:redeflutter/presentation/common/avatar.dart';

class ConversationListItem extends StatelessWidget {
  Conversation conversation;
  ConversationListItem({Key key, this.conversation}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: Avatar(
                url: NetworkImage(conversation.participantProfile.avatarUrl),
                size: 40,
              ),
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [Text(conversation.participantProfile.name)],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [Text(conversation.lastMessage.subject)],
            ),
          ],
        ),
        Spacer(),
        Icon(
          Icons.arrow_forward_ios,
          size: 15,
        )
      ],
    );
  }
}
