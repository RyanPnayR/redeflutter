import 'package:flutter/cupertino.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:redeflutter/model/messaging.dart';
import 'package:universal_html/parsing.dart';

class MessageThreadItem extends StatelessWidget {
  Message message;

  MessageThreadItem({Key key, this.message}) : super(key: key);

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
    return stripped;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Html(
      data: getMessageBody(),
      blacklistedElements: ["video", "img"],
    ));
  }
}
