import "package:json_annotation/json_annotation.dart";

class JwtToken {
  JwtToken(this.token);

  String token = "";
}

class Account {
  String id;
  String createdAt;
  String updatedAt;
  String userId;
  Settings settings;
  String firstName;
  String lastName;
  String name;
  String initials;
  String avatarObjectKey;
  String avatarUrl;
  String backgroundObjectKey;
  String backgroundUrl;
  String locale;
  String timezoneOffset;
  bool daylightSavings;
  String phoneNumber;
  User user;
  String profile;
  String jobTitle;
  String location;
  String bio;
  String webUri1;
  String webUri2;

  Account(
    this.id,
    this.createdAt,
    this.updatedAt,
    this.userId,
    this.settings,
    this.firstName,
    this.lastName,
    this.name,
    this.initials,
    this.avatarObjectKey,
    this.avatarUrl,
    this.backgroundObjectKey,
    this.backgroundUrl,
    this.locale,
    this.timezoneOffset,
    this.daylightSavings,
    this.phoneNumber,
    this.user,
    this.profile,
    this.jobTitle,
    this.location,
    this.bio,
    this.webUri1,
    this.webUri2,
  );
  Account.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        createdAt = json['createdAt'],
        updatedAt = json['updatedAt'],
        userId = json['userId'],
        settings = Settings.fromJson(json['settings']),
        firstName = json['firstName'],
        lastName = json['lastName'],
        name = json['name'],
        initials = json['initials'],
        avatarObjectKey = json['avatarObjectKey'],
        avatarUrl = json['avatarUrl'],
        backgroundObjectKey = json['backgroundObjectKey'],
        backgroundUrl = json['backgroundUrl'],
        locale = json['locale'],
        timezoneOffset = json['timezoneOffset'],
        daylightSavings = json['daylightSavings'],
        phoneNumber = json['phoneNumber'],
        user = User.fromJson(json['user']),
        profile = json['profile'],
        jobTitle = json['jobTitle'],
        location = json['location'],
        bio = json['bio'],
        webUri1 = json['webUri1'],
        webUri2 = json['webUri2'];
}

class Settings {
  String id;
  String accountId;
  String notificationSound;
  bool sendDailyEmail;
  int pushRepeatInterval;
  String doNotDisturbUntil;
  String defaultNetworkId;

  Settings(
    this.id,
    this.accountId,
    this.notificationSound,
    this.sendDailyEmail,
    this.pushRepeatInterval,
    this.doNotDisturbUntil,
    this.defaultNetworkId,
  );

  Settings.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        accountId = json['accountId'],
        notificationSound = json['notificationSound'],
        sendDailyEmail = json['sendDailyEmail'],
        pushRepeatInterval = json['pushRepeatInterval'],
        doNotDisturbUntil = json['doNotDisturbUntil'],
        defaultNetworkId = json['defaultNetworkId'];
}

class User {
  String id;
  String username;
  bool isStaff;
  String lastLogin;
  bool lockedOut;
  String email;
  String accountId;

  User(
    this.id,
    this.username,
    this.isStaff,
    this.lastLogin,
    this.lockedOut,
    this.email,
    this.accountId,
  );

  User.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        username = json['username'],
        isStaff = json['isStaff'],
        lastLogin = json['lastLogin'],
        lockedOut = json['lockedOut'],
        email = json['email'],
        accountId = json['accountId'];
}

class NetworkAccount {
  String id;
  String name;
  String avatarUrl;
  Settings settings;
  SubscriberAccount subscriberAccount;
  List<String> geofences;
  String parentId;

  NetworkAccount(
    this.id,
    this.name,
    this.avatarUrl,
    this.settings,
    this.subscriberAccount,
    this.geofences,
    this.parentId,
  );
}

class NetworkSettings {
  bool directoryEnabled;
  bool shiftsEnabled;
  bool formsEnabled;
  String formsFolderId;
  bool teamsEnabled;
  int teamMembershipLimit;
  bool devicePasscodeRequired;
  bool passportEnabled;
  bool passportLocationTrackingEnabled;
  List<AccountProfileField> accountProfileFields;

  NetworkSettings(
    this.directoryEnabled,
    this.shiftsEnabled,
    this.formsEnabled,
    this.formsFolderId,
    this.teamsEnabled,
    this.teamMembershipLimit,
    this.devicePasscodeRequired,
    this.passportEnabled,
    this.passportLocationTrackingEnabled,
    this.accountProfileFields,
  );
}

class AccountProfileField {
  String name;
  bool accountProfileFieldDefault;
  String listId;
  bool readOnly;
  String emoji;

  AccountProfileField(
    this.name,
    this.accountProfileFieldDefault,
    this.listId,
    this.readOnly,
    this.emoji,
  );
}

class SubscriberAccount {
  String id;
  bool isNetworkNotifier;
  bool isShiftsGroupMember;
  bool isShiftsApprover;

  SubscriberAccount(
    this.id,
    this.isNetworkNotifier,
    this.isShiftsGroupMember,
    this.isShiftsApprover,
  );
}
