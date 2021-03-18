import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:redeflutter/model/messaging.dart';
import 'package:redeflutter/presentation/common/avatar.dart';
import 'package:redeflutter/theme.dart';
import 'package:redeflutter/util/date_formatting.dart';

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
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Container(
                      padding: new EdgeInsets.only(right: 15.0),
                      child: Row(children: [
                        Flexible(
                          fit: FlexFit.loose,
                          child: Container(
                            child: Text(
                              conversation.participantProfile.name,
                              overflow: TextOverflow.ellipsis,
                              style: AppTheme.conversationContactText,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            left: 5,
                          ),
                          child: Text(
                            formatDate(
                              context,
                              DateTime.parse(conversation.lastMessage.date),
                            ),
                            style: AppTheme.conversationDateText,
                          ),
                        ),
                      ]),
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Container(
                      padding: new EdgeInsets.only(right: 13.0),
                      child: Text(
                        conversation.lastMessage.subject,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        softWrap: false,
                        style: AppTheme.conversationSubjectText,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(right: 5),
          child: Icon(
            Icons.arrow_forward_ios,
            color: AppTheme.mediumGray,
            size: 15,
          ),
        )
      ],
    );
  }
}
