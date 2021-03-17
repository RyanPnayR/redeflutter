class Conversation {
  String id;
  String createdAt;
  String updatedAt;
  String networkId;
  String ownerId;
  String ownerType;
  Profile ownerProfile;
  String participantId;
  String participantType;
  Profile participantProfile;
  bool readOnly;
  bool broadcast;
  bool replyAll;
  String relationship;
  bool archived;
  bool hasUnreadMessages;
  bool hasRetractedMessages;
  bool hasFailedMessages;
  int messageCount;
  bool muted;
  bool deleted;
  Message lastMessage;

  Conversation({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.networkId,
    this.ownerId,
    this.ownerType,
    this.ownerProfile,
    this.participantId,
    this.participantType,
    this.participantProfile,
    this.readOnly,
    this.broadcast,
    this.replyAll,
    this.relationship,
    this.archived,
    this.hasUnreadMessages,
    this.hasRetractedMessages,
    this.hasFailedMessages,
    this.messageCount,
    this.muted,
    this.deleted,
    this.lastMessage,
  });

  Conversation.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        createdAt = json['created_at'],
        updatedAt = json['updated_at'],
        networkId = json['network_id'],
        ownerId = json['owner_id'],
        ownerType = json['owner_type'],
        ownerProfile = Profile.fromJson(json['owner_profile']),
        participantId = json['participant_id'],
        participantType = json['participant_type'],
        participantProfile = Profile.fromJson(json['participant_profile']),
        readOnly = json['read_only'],
        broadcast = json['broadcast'],
        replyAll = json['reply_all'],
        relationship = json['relationship'],
        archived = json['archived'],
        hasUnreadMessages = json['has_unread_messages'],
        hasRetractedMessages = json['has_retracted_messages'],
        hasFailedMessages = json['has_failed_messages'],
        messageCount = json['message_count'],
        muted = json['muted'],
        deleted = json['deleted'],
        lastMessage = Message.fromJson(json['last_message']);
}

class Message {
  String id;
  String body;
  String date;
  String subject;
  String useCase;
  bool retracted;
  // List<Recipient> recipients;
  // List<dynamic> attachments;
  String contentType;
  dynamic deliveredAt;
  Profile senderProfile;
  Profile creatorProfile;

  Message({
    this.id,
    this.body,
    this.date,
    this.subject,
    this.useCase,
    this.retracted,
    // this.recipients,
    // this.attachments,
    this.contentType,
    this.deliveredAt,
    this.senderProfile,
    this.creatorProfile,
  });

  Message.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        body = json['body'],
        date = json['date'],
        subject = json['subject'],
        useCase = json['use_case'],
        retracted = json['retracted'],
        // recipients = json['recipients'],
        // attachments = json['attachments'],
        contentType = json['content_type'],
        deliveredAt = json['delivered_at'],
        senderProfile = json['sender_profile'] != null
            ? Profile.fromJson(json['sender_profile'])
            : Profile(),
        creatorProfile = json['creator_profile'] != null
            ? Profile.fromJson(json['creator_profile'])
            : Profile();
}

class Profile {
  String name;
  String initials;
  String ownerId;
  String avatarUrl;
  String ownerType;
  int memberCount;

  Profile(
      {this.name,
      this.initials,
      this.ownerId,
      this.avatarUrl,
      this.ownerType,
      this.memberCount});

  Profile.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        initials = json['initials'],
        ownerId = json['owner_id'],
        avatarUrl = json['avatar_url'],
        ownerType = json['owner_type'],
        memberCount = json['member_count'];
}

class Recipient {
  Profile profile;
  bool broadcast;
  bool replyAll;
  String recipientId;
  String broadcastType;
  String recipientType;

  Recipient({
    this.profile,
    this.broadcast,
    this.replyAll,
    this.recipientId,
    this.broadcastType,
    this.recipientType,
  });

  Recipient.fromJson(Map<String, dynamic> json)
      : profile = Profile.fromJson(json['profile']),
        broadcast = json['broadcast'],
        replyAll = json['reply_all'],
        recipientId = json['recipient_id'],
        broadcastType = json['broadcast_type'],
        recipientType = json['recipient_type'];
}
