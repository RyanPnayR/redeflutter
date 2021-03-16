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
        createdAt = json['created_at'],
        updatedAt = json['updated_at'],
        userId = json['user_id'],
        settings = Settings.fromJson(json['settings']),
        firstName = json['first_name'],
        lastName = json['last_name'],
        name = json['name'],
        initials = json['initials'],
        avatarObjectKey = json['avatar_object_key'],
        avatarUrl = json['avatar_url'],
        backgroundObjectKey = json['background_object_key'],
        backgroundUrl = json['background_url'],
        locale = json['locale'],
        timezoneOffset = json['timezone_offset'],
        daylightSavings = json['daylight_savings'],
        phoneNumber = json['phone_number'],
        user = User.fromJson(json['user']),
        profile = json['profile'],
        jobTitle = json['jobTitle'],
        location = json['location'],
        bio = json['bio'],
        webUri1 = json['web_uri_1'],
        webUri2 = json['web_uri_2'];
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
        accountId = json['account_id'],
        notificationSound = json['notification_sound'],
        sendDailyEmail = json['send_daily_email'],
        pushRepeatInterval = json['push_repeat_interval'],
        doNotDisturbUntil = json['do_not_disturb_until'],
        defaultNetworkId = json['default_network_id'];
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
        isStaff = json['is_staff'],
        lastLogin = json['last_login'],
        lockedOut = json['locked_out'],
        email = json['email'],
        accountId = json['account_id'];
}

class NetworkAccount {
  String id;
  String name;
  String avatarUrl;
  NetworkSettings settings;
  SubscriberAccount subscriberAccount;
  // List<String> geofences;
  String parentId;

  NetworkAccount(
    this.id,
    this.name,
    this.avatarUrl,
    this.settings,
    this.subscriberAccount,
    // this.geofences,
    this.parentId,
  );

  NetworkAccount.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        avatarUrl = json['avatar_url'],
        settings = NetworkSettings.fromJson(json['settings']),
        subscriberAccount =
            SubscriberAccount.fromJson(json['subscriber_account']),
        // geofences = json['geofences'],
        parentId = json['parent_id'];
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
  // List<AccountProfileField> accountProfileFields;

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
    // this.accountProfileFields,
  );

  NetworkSettings.fromJson(Map<String, dynamic> json)
      : directoryEnabled = json['directory_enabled'],
        shiftsEnabled = json['shifts_enabled'],
        formsEnabled = json['forms_enabled'],
        formsFolderId = json['forms_folder_id'],
        teamsEnabled = json['teams_enabled'],
        teamMembershipLimit = json['team_membership_limit'],
        devicePasscodeRequired = json['device_passcode_required'],
        passportEnabled = json['passport_enabled'],
        passportLocationTrackingEnabled =
            json['passport_location_tracking_enabled'];
  // accountProfileFields = json['accountProfileFields'];
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

  AccountProfileField.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        accountProfileFieldDefault = json['account_profile_field_default'],
        listId = json['list_id'],
        readOnly = json['read_only'],
        emoji = json['emoji'];
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

  SubscriberAccount.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        isNetworkNotifier = json['is_network_notifier'],
        isShiftsGroupMember = json['is_shifts_group_member'],
        isShiftsApprover = json['is_shifts_approver'];
}
