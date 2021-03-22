import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_html/style.dart';
import 'package:redeflutter/data/app_model.dart';
import 'package:redeflutter/locator.dart';
import 'package:redeflutter/model/messaging.dart';
import 'package:redeflutter/presentation/common/avatar.dart';
import 'package:redeflutter/theme.dart';
import 'package:redeflutter/util/date_formatting.dart';

class MessageThreadItem extends StatelessWidget {
  final Message message;
  final Message prevMessage;
  final AppModel appModel = locator.get<AppModel>();

  MessageThreadItem({Key key, this.message, this.prevMessage})
      : super(key: key);

  String getMessageBody() {
    String body = message.body;
    int start = body.indexOf("<style>");
    int end = body.indexOf("</style>");
    String stripped =
        start >= 0 ? body.replaceAll(body.substring(start, end + 8), "") : body;
    int paddingLoc = stripped.indexOf("<p><br></p></div>");
    stripped = paddingLoc >= 0
        ? stripped.replaceRange(paddingLoc, paddingLoc + 11, "")
        : stripped;

    stripped = stripped.replaceAll("<li>", "&#8226; ");
    stripped = stripped.replaceAll("</li>", "<br>");
    return "<div>$stripped</div>";
  }

  Widget getMessageWidget() {
    return Html(
      shrinkWrap: true,
      data: getMessageBody(),
      blacklistedElements: ["video", "img"],
      style: isMessageSent()
          ? {"div": Style(color: Colors.white)}
          : {"div": Style(color: Colors.black)},
    );
  }

  bool isMessageSent() {
    return message.senderProfile.ownerId == appModel.account.id;
  }

  bool messagesSameDay() {
    return prevMessage == null ||
        !isSameDate(
            DateTime.parse(prevMessage.date), DateTime.parse(message.date));
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      messagesSameDay()
          ? Row(
              children: [
                Expanded(
                  child: Divider(
                    color: AppTheme.mediumGray,
                    indent: 5,
                    endIndent: 5,
                  ),
                ),
                Text(
                  formatDate(
                    context,
                    DateTime.parse(message.date),
                  ),
                ),
                Expanded(
                  child: Divider(
                    color: AppTheme.mediumGray,
                    indent: 5,
                    endIndent: 5,
                  ),
                ),
              ],
            )
          : Container(),
      isMessageSent() ? getSentMessage(context) : getRecievedMessage(context)
    ]);
  }

  Container messageContainer(
      BuildContext context, Color color, EdgeInsets margin) {
    return Container(
      margin: margin,
      constraints: BoxConstraints(
        maxWidth: MediaQuery.of(context).size.width - 100,
        maxHeight: 200,
      ),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          getMessageWidget(),
          SizedBox(
            width: 50,
            height: 50,
            child: Container(
              color: AppTheme.blueFont,
            ),
          )
        ],
      ),
    );
  }

  Widget getRecievedMessage(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
            margin: EdgeInsets.symmetric(
              horizontal: 5,
            ),
            child: getAvatar()),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            getMessageDate(context),
            messageContainer(
              context,
              AppTheme.messageBubbleReceivedColor,
              EdgeInsets.only(
                bottom: 10,
              ),
            ),
          ],
        )
      ],
    );
  }

  Text getMessageDate(BuildContext context) {
    return Text(
      formatTime(context, DateTime.parse(message.date)),
      style: AppTheme.messageThreadDateText,
    );
  }

  Widget getSentMessage(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              margin: EdgeInsets.only(
                right: 10,
              ),
              child: getMessageDate(context),
            ),
            messageContainer(
              context,
              AppTheme.messageBubbleSentColor,
              EdgeInsets.only(
                right: 10,
                bottom: 10,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget getAvatar() {
    var avatar = Avatar(
      size: 40,
      url: NetworkImage(message.senderProfile.avatarUrl),
    );

    return (prevMessage != null &&
                prevMessage.senderProfile.ownerId ==
                    message.senderProfile.ownerId) &&
            !messagesSameDay()
        ? SizedBox(
            width: 40,
          )
        : avatar;
  }
}
