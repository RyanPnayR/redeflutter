import 'package:dio/dio.dart';
import 'package:redeflutter/data/app_model.dart';
import 'package:redeflutter/locator.dart';
import 'package:redeflutter/model/messaging.dart';
import 'package:redeflutter/services/paths/messaging_paths.dart';

class MessagingService {
  var dio = locator.get<Dio>();
  var appModel = locator<AppModel>();

  Future<Response> getNetworks({int page = 1, int pageSize}) async {
    List<String> networkIds = [
      appModel.selectedNetwork.id,
      appModel.selectedNetwork.parentId
    ];

    Response resp = await dio.get(MessagingPaths.getConversations(page,
        pageSize: pageSize, networkIds: networkIds));
    return resp;
  }

  List<Conversation> conversationResponseToConversations(Response resp) {
    List<Conversation> conversations = [];
    var results = resp.data['results'];
    results.forEach((conversation) {
      conversations.add(Conversation.fromJson(conversation));
    });
    return conversations;
  }
}
