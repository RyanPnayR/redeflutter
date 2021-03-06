class MessagingPaths {
  static const PATH_API = "api";
  static const PATH_MESSAGING = "messaging";
  static const PATH_VERSION = "v1";
  static const PATH_CONVERSATIONS = "conversations";
  static const PATH_MESSAGES = "messages";

  static String getConversations(int page,
      {List<String> networkIds, int pageSize = 20}) {
    String path =
        "/$PATH_API/$PATH_MESSAGING/$PATH_VERSION/$PATH_CONVERSATIONS?page=$page&page_size=$pageSize";
    if (networkIds.isNotEmpty) {
      networkIds.forEach((id) {
        path = path + "&network_id=$id";
      });
    }

    return path;
  }

  static String getMessages(int page,
      {String conversationId, int pageSize = 20}) {
    return "/$PATH_API/$PATH_MESSAGING/$PATH_VERSION/$PATH_CONVERSATIONS/$conversationId/$PATH_MESSAGES?page=$page&page_size=$pageSize";
  }
}
