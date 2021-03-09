// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$JwtToken extends JwtToken {
  @override
  final String token;

  factory _$JwtToken([void Function(JwtTokenBuilder) updates]) =>
      (new JwtTokenBuilder()..update(updates)).build();

  _$JwtToken._({this.token}) : super._() {
    BuiltValueNullFieldError.checkNotNull(token, 'JwtToken', 'token');
  }

  @override
  JwtToken rebuild(void Function(JwtTokenBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  JwtTokenBuilder toBuilder() => new JwtTokenBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is JwtToken && token == other.token;
  }

  @override
  int get hashCode {
    return $jf($jc(0, token.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('JwtToken')..add('token', token))
        .toString();
  }
}

class JwtTokenBuilder implements Builder<JwtToken, JwtTokenBuilder> {
  _$JwtToken _$v;

  String _token;
  String get token => _$this._token;
  set token(String token) => _$this._token = token;

  JwtTokenBuilder();

  JwtTokenBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _token = $v.token;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(JwtToken other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$JwtToken;
  }

  @override
  void update(void Function(JwtTokenBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$JwtToken build() {
    final _$result = _$v ??
        new _$JwtToken._(
            token: BuiltValueNullFieldError.checkNotNull(
                token, 'JwtToken', 'token'));
    replace(_$result);
    return _$result;
  }
}

class _$Account extends Account {
  @override
  final String id;
  @override
  final String createdAt;
  @override
  final String updatedAt;
  @override
  final String userId;
  @override
  final Settings settings;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String name;
  @override
  final String initials;
  @override
  final String avatarObjectKey;
  @override
  final String avatarUrl;
  @override
  final String backgroundObjectKey;
  @override
  final String backgroundUrl;
  @override
  final String locale;
  @override
  final String timezoneOffset;
  @override
  final bool daylightSavings;
  @override
  final String phoneNumber;
  @override
  final User user;
  @override
  final String profile;
  @override
  final String jobTitle;
  @override
  final String location;
  @override
  final String bio;
  @override
  final String webUri1;
  @override
  final String webUri2;

  factory _$Account([void Function(AccountBuilder) updates]) =>
      (new AccountBuilder()..update(updates)).build();

  _$Account._(
      {this.id,
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
      this.webUri2})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, 'Account', 'id');
    BuiltValueNullFieldError.checkNotNull(createdAt, 'Account', 'createdAt');
    BuiltValueNullFieldError.checkNotNull(updatedAt, 'Account', 'updatedAt');
    BuiltValueNullFieldError.checkNotNull(userId, 'Account', 'userId');
    BuiltValueNullFieldError.checkNotNull(settings, 'Account', 'settings');
    BuiltValueNullFieldError.checkNotNull(firstName, 'Account', 'firstName');
    BuiltValueNullFieldError.checkNotNull(lastName, 'Account', 'lastName');
    BuiltValueNullFieldError.checkNotNull(name, 'Account', 'name');
    BuiltValueNullFieldError.checkNotNull(initials, 'Account', 'initials');
    BuiltValueNullFieldError.checkNotNull(
        avatarObjectKey, 'Account', 'avatarObjectKey');
    BuiltValueNullFieldError.checkNotNull(avatarUrl, 'Account', 'avatarUrl');
    BuiltValueNullFieldError.checkNotNull(
        backgroundObjectKey, 'Account', 'backgroundObjectKey');
    BuiltValueNullFieldError.checkNotNull(
        backgroundUrl, 'Account', 'backgroundUrl');
    BuiltValueNullFieldError.checkNotNull(locale, 'Account', 'locale');
    BuiltValueNullFieldError.checkNotNull(
        timezoneOffset, 'Account', 'timezoneOffset');
    BuiltValueNullFieldError.checkNotNull(
        daylightSavings, 'Account', 'daylightSavings');
    BuiltValueNullFieldError.checkNotNull(
        phoneNumber, 'Account', 'phoneNumber');
    BuiltValueNullFieldError.checkNotNull(user, 'Account', 'user');
    BuiltValueNullFieldError.checkNotNull(profile, 'Account', 'profile');
    BuiltValueNullFieldError.checkNotNull(jobTitle, 'Account', 'jobTitle');
    BuiltValueNullFieldError.checkNotNull(location, 'Account', 'location');
    BuiltValueNullFieldError.checkNotNull(bio, 'Account', 'bio');
    BuiltValueNullFieldError.checkNotNull(webUri1, 'Account', 'webUri1');
    BuiltValueNullFieldError.checkNotNull(webUri2, 'Account', 'webUri2');
  }

  @override
  Account rebuild(void Function(AccountBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AccountBuilder toBuilder() => new AccountBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Account &&
        id == other.id &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        userId == other.userId &&
        settings == other.settings &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        name == other.name &&
        initials == other.initials &&
        avatarObjectKey == other.avatarObjectKey &&
        avatarUrl == other.avatarUrl &&
        backgroundObjectKey == other.backgroundObjectKey &&
        backgroundUrl == other.backgroundUrl &&
        locale == other.locale &&
        timezoneOffset == other.timezoneOffset &&
        daylightSavings == other.daylightSavings &&
        phoneNumber == other.phoneNumber &&
        user == other.user &&
        profile == other.profile &&
        jobTitle == other.jobTitle &&
        location == other.location &&
        bio == other.bio &&
        webUri1 == other.webUri1 &&
        webUri2 == other.webUri2;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            $jc($jc($jc($jc($jc($jc(0, id.hashCode), createdAt.hashCode), updatedAt.hashCode), userId.hashCode), settings.hashCode),
                                                                                firstName.hashCode),
                                                                            lastName.hashCode),
                                                                        name.hashCode),
                                                                    initials.hashCode),
                                                                avatarObjectKey.hashCode),
                                                            avatarUrl.hashCode),
                                                        backgroundObjectKey.hashCode),
                                                    backgroundUrl.hashCode),
                                                locale.hashCode),
                                            timezoneOffset.hashCode),
                                        daylightSavings.hashCode),
                                    phoneNumber.hashCode),
                                user.hashCode),
                            profile.hashCode),
                        jobTitle.hashCode),
                    location.hashCode),
                bio.hashCode),
            webUri1.hashCode),
        webUri2.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Account')
          ..add('id', id)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt)
          ..add('userId', userId)
          ..add('settings', settings)
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('name', name)
          ..add('initials', initials)
          ..add('avatarObjectKey', avatarObjectKey)
          ..add('avatarUrl', avatarUrl)
          ..add('backgroundObjectKey', backgroundObjectKey)
          ..add('backgroundUrl', backgroundUrl)
          ..add('locale', locale)
          ..add('timezoneOffset', timezoneOffset)
          ..add('daylightSavings', daylightSavings)
          ..add('phoneNumber', phoneNumber)
          ..add('user', user)
          ..add('profile', profile)
          ..add('jobTitle', jobTitle)
          ..add('location', location)
          ..add('bio', bio)
          ..add('webUri1', webUri1)
          ..add('webUri2', webUri2))
        .toString();
  }
}

class AccountBuilder implements Builder<Account, AccountBuilder> {
  _$Account _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _createdAt;
  String get createdAt => _$this._createdAt;
  set createdAt(String createdAt) => _$this._createdAt = createdAt;

  String _updatedAt;
  String get updatedAt => _$this._updatedAt;
  set updatedAt(String updatedAt) => _$this._updatedAt = updatedAt;

  String _userId;
  String get userId => _$this._userId;
  set userId(String userId) => _$this._userId = userId;

  SettingsBuilder _settings;
  SettingsBuilder get settings => _$this._settings ??= new SettingsBuilder();
  set settings(SettingsBuilder settings) => _$this._settings = settings;

  String _firstName;
  String get firstName => _$this._firstName;
  set firstName(String firstName) => _$this._firstName = firstName;

  String _lastName;
  String get lastName => _$this._lastName;
  set lastName(String lastName) => _$this._lastName = lastName;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _initials;
  String get initials => _$this._initials;
  set initials(String initials) => _$this._initials = initials;

  String _avatarObjectKey;
  String get avatarObjectKey => _$this._avatarObjectKey;
  set avatarObjectKey(String avatarObjectKey) =>
      _$this._avatarObjectKey = avatarObjectKey;

  String _avatarUrl;
  String get avatarUrl => _$this._avatarUrl;
  set avatarUrl(String avatarUrl) => _$this._avatarUrl = avatarUrl;

  String _backgroundObjectKey;
  String get backgroundObjectKey => _$this._backgroundObjectKey;
  set backgroundObjectKey(String backgroundObjectKey) =>
      _$this._backgroundObjectKey = backgroundObjectKey;

  String _backgroundUrl;
  String get backgroundUrl => _$this._backgroundUrl;
  set backgroundUrl(String backgroundUrl) =>
      _$this._backgroundUrl = backgroundUrl;

  String _locale;
  String get locale => _$this._locale;
  set locale(String locale) => _$this._locale = locale;

  String _timezoneOffset;
  String get timezoneOffset => _$this._timezoneOffset;
  set timezoneOffset(String timezoneOffset) =>
      _$this._timezoneOffset = timezoneOffset;

  bool _daylightSavings;
  bool get daylightSavings => _$this._daylightSavings;
  set daylightSavings(bool daylightSavings) =>
      _$this._daylightSavings = daylightSavings;

  String _phoneNumber;
  String get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String phoneNumber) => _$this._phoneNumber = phoneNumber;

  UserBuilder _user;
  UserBuilder get user => _$this._user ??= new UserBuilder();
  set user(UserBuilder user) => _$this._user = user;

  String _profile;
  String get profile => _$this._profile;
  set profile(String profile) => _$this._profile = profile;

  String _jobTitle;
  String get jobTitle => _$this._jobTitle;
  set jobTitle(String jobTitle) => _$this._jobTitle = jobTitle;

  String _location;
  String get location => _$this._location;
  set location(String location) => _$this._location = location;

  String _bio;
  String get bio => _$this._bio;
  set bio(String bio) => _$this._bio = bio;

  String _webUri1;
  String get webUri1 => _$this._webUri1;
  set webUri1(String webUri1) => _$this._webUri1 = webUri1;

  String _webUri2;
  String get webUri2 => _$this._webUri2;
  set webUri2(String webUri2) => _$this._webUri2 = webUri2;

  AccountBuilder();

  AccountBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _userId = $v.userId;
      _settings = $v.settings.toBuilder();
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _name = $v.name;
      _initials = $v.initials;
      _avatarObjectKey = $v.avatarObjectKey;
      _avatarUrl = $v.avatarUrl;
      _backgroundObjectKey = $v.backgroundObjectKey;
      _backgroundUrl = $v.backgroundUrl;
      _locale = $v.locale;
      _timezoneOffset = $v.timezoneOffset;
      _daylightSavings = $v.daylightSavings;
      _phoneNumber = $v.phoneNumber;
      _user = $v.user.toBuilder();
      _profile = $v.profile;
      _jobTitle = $v.jobTitle;
      _location = $v.location;
      _bio = $v.bio;
      _webUri1 = $v.webUri1;
      _webUri2 = $v.webUri2;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Account other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Account;
  }

  @override
  void update(void Function(AccountBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Account build() {
    _$Account _$result;
    try {
      _$result = _$v ??
          new _$Account._(
              id: BuiltValueNullFieldError.checkNotNull(id, 'Account', 'id'),
              createdAt: BuiltValueNullFieldError.checkNotNull(
                  createdAt, 'Account', 'createdAt'),
              updatedAt: BuiltValueNullFieldError.checkNotNull(
                  updatedAt, 'Account', 'updatedAt'),
              userId: BuiltValueNullFieldError.checkNotNull(
                  userId, 'Account', 'userId'),
              settings: settings.build(),
              firstName: BuiltValueNullFieldError.checkNotNull(
                  firstName, 'Account', 'firstName'),
              lastName: BuiltValueNullFieldError.checkNotNull(
                  lastName, 'Account', 'lastName'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, 'Account', 'name'),
              initials: BuiltValueNullFieldError.checkNotNull(
                  initials, 'Account', 'initials'),
              avatarObjectKey: BuiltValueNullFieldError.checkNotNull(
                  avatarObjectKey, 'Account', 'avatarObjectKey'),
              avatarUrl: BuiltValueNullFieldError.checkNotNull(
                  avatarUrl, 'Account', 'avatarUrl'),
              backgroundObjectKey: BuiltValueNullFieldError.checkNotNull(
                  backgroundObjectKey, 'Account', 'backgroundObjectKey'),
              backgroundUrl: BuiltValueNullFieldError.checkNotNull(
                  backgroundUrl, 'Account', 'backgroundUrl'),
              locale: BuiltValueNullFieldError.checkNotNull(locale, 'Account', 'locale'),
              timezoneOffset: BuiltValueNullFieldError.checkNotNull(timezoneOffset, 'Account', 'timezoneOffset'),
              daylightSavings: BuiltValueNullFieldError.checkNotNull(daylightSavings, 'Account', 'daylightSavings'),
              phoneNumber: BuiltValueNullFieldError.checkNotNull(phoneNumber, 'Account', 'phoneNumber'),
              user: user.build(),
              profile: BuiltValueNullFieldError.checkNotNull(profile, 'Account', 'profile'),
              jobTitle: BuiltValueNullFieldError.checkNotNull(jobTitle, 'Account', 'jobTitle'),
              location: BuiltValueNullFieldError.checkNotNull(location, 'Account', 'location'),
              bio: BuiltValueNullFieldError.checkNotNull(bio, 'Account', 'bio'),
              webUri1: BuiltValueNullFieldError.checkNotNull(webUri1, 'Account', 'webUri1'),
              webUri2: BuiltValueNullFieldError.checkNotNull(webUri2, 'Account', 'webUri2'));
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'settings';
        settings.build();

        _$failedField = 'user';
        user.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Account', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Settings extends Settings {
  @override
  final String id;
  @override
  final String accountId;
  @override
  final String notificationSound;
  @override
  final bool sendDailyEmail;
  @override
  final int pushRepeatInterval;
  @override
  final String doNotDisturbUntil;
  @override
  final String defaultNetworkId;

  factory _$Settings([void Function(SettingsBuilder) updates]) =>
      (new SettingsBuilder()..update(updates)).build();

  _$Settings._(
      {this.id,
      this.accountId,
      this.notificationSound,
      this.sendDailyEmail,
      this.pushRepeatInterval,
      this.doNotDisturbUntil,
      this.defaultNetworkId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, 'Settings', 'id');
    BuiltValueNullFieldError.checkNotNull(accountId, 'Settings', 'accountId');
    BuiltValueNullFieldError.checkNotNull(
        notificationSound, 'Settings', 'notificationSound');
    BuiltValueNullFieldError.checkNotNull(
        sendDailyEmail, 'Settings', 'sendDailyEmail');
    BuiltValueNullFieldError.checkNotNull(
        pushRepeatInterval, 'Settings', 'pushRepeatInterval');
    BuiltValueNullFieldError.checkNotNull(
        doNotDisturbUntil, 'Settings', 'doNotDisturbUntil');
    BuiltValueNullFieldError.checkNotNull(
        defaultNetworkId, 'Settings', 'defaultNetworkId');
  }

  @override
  Settings rebuild(void Function(SettingsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SettingsBuilder toBuilder() => new SettingsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Settings &&
        id == other.id &&
        accountId == other.accountId &&
        notificationSound == other.notificationSound &&
        sendDailyEmail == other.sendDailyEmail &&
        pushRepeatInterval == other.pushRepeatInterval &&
        doNotDisturbUntil == other.doNotDisturbUntil &&
        defaultNetworkId == other.defaultNetworkId;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, id.hashCode), accountId.hashCode),
                        notificationSound.hashCode),
                    sendDailyEmail.hashCode),
                pushRepeatInterval.hashCode),
            doNotDisturbUntil.hashCode),
        defaultNetworkId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Settings')
          ..add('id', id)
          ..add('accountId', accountId)
          ..add('notificationSound', notificationSound)
          ..add('sendDailyEmail', sendDailyEmail)
          ..add('pushRepeatInterval', pushRepeatInterval)
          ..add('doNotDisturbUntil', doNotDisturbUntil)
          ..add('defaultNetworkId', defaultNetworkId))
        .toString();
  }
}

class SettingsBuilder implements Builder<Settings, SettingsBuilder> {
  _$Settings _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _accountId;
  String get accountId => _$this._accountId;
  set accountId(String accountId) => _$this._accountId = accountId;

  String _notificationSound;
  String get notificationSound => _$this._notificationSound;
  set notificationSound(String notificationSound) =>
      _$this._notificationSound = notificationSound;

  bool _sendDailyEmail;
  bool get sendDailyEmail => _$this._sendDailyEmail;
  set sendDailyEmail(bool sendDailyEmail) =>
      _$this._sendDailyEmail = sendDailyEmail;

  int _pushRepeatInterval;
  int get pushRepeatInterval => _$this._pushRepeatInterval;
  set pushRepeatInterval(int pushRepeatInterval) =>
      _$this._pushRepeatInterval = pushRepeatInterval;

  String _doNotDisturbUntil;
  String get doNotDisturbUntil => _$this._doNotDisturbUntil;
  set doNotDisturbUntil(String doNotDisturbUntil) =>
      _$this._doNotDisturbUntil = doNotDisturbUntil;

  String _defaultNetworkId;
  String get defaultNetworkId => _$this._defaultNetworkId;
  set defaultNetworkId(String defaultNetworkId) =>
      _$this._defaultNetworkId = defaultNetworkId;

  SettingsBuilder();

  SettingsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _accountId = $v.accountId;
      _notificationSound = $v.notificationSound;
      _sendDailyEmail = $v.sendDailyEmail;
      _pushRepeatInterval = $v.pushRepeatInterval;
      _doNotDisturbUntil = $v.doNotDisturbUntil;
      _defaultNetworkId = $v.defaultNetworkId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Settings other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Settings;
  }

  @override
  void update(void Function(SettingsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Settings build() {
    final _$result = _$v ??
        new _$Settings._(
            id: BuiltValueNullFieldError.checkNotNull(id, 'Settings', 'id'),
            accountId: BuiltValueNullFieldError.checkNotNull(
                accountId, 'Settings', 'accountId'),
            notificationSound: BuiltValueNullFieldError.checkNotNull(
                notificationSound, 'Settings', 'notificationSound'),
            sendDailyEmail: BuiltValueNullFieldError.checkNotNull(
                sendDailyEmail, 'Settings', 'sendDailyEmail'),
            pushRepeatInterval: BuiltValueNullFieldError.checkNotNull(
                pushRepeatInterval, 'Settings', 'pushRepeatInterval'),
            doNotDisturbUntil: BuiltValueNullFieldError.checkNotNull(
                doNotDisturbUntil, 'Settings', 'doNotDisturbUntil'),
            defaultNetworkId: BuiltValueNullFieldError.checkNotNull(
                defaultNetworkId, 'Settings', 'defaultNetworkId'));
    replace(_$result);
    return _$result;
  }
}

class _$User extends User {
  @override
  final String id;
  @override
  final String username;
  @override
  final bool isStaff;
  @override
  final String lastLogin;
  @override
  final bool lockedOut;
  @override
  final String email;
  @override
  final String accountId;

  factory _$User([void Function(UserBuilder) updates]) =>
      (new UserBuilder()..update(updates)).build();

  _$User._(
      {this.id,
      this.username,
      this.isStaff,
      this.lastLogin,
      this.lockedOut,
      this.email,
      this.accountId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, 'User', 'id');
    BuiltValueNullFieldError.checkNotNull(username, 'User', 'username');
    BuiltValueNullFieldError.checkNotNull(isStaff, 'User', 'isStaff');
    BuiltValueNullFieldError.checkNotNull(lastLogin, 'User', 'lastLogin');
    BuiltValueNullFieldError.checkNotNull(lockedOut, 'User', 'lockedOut');
    BuiltValueNullFieldError.checkNotNull(email, 'User', 'email');
    BuiltValueNullFieldError.checkNotNull(accountId, 'User', 'accountId');
  }

  @override
  User rebuild(void Function(UserBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserBuilder toBuilder() => new UserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is User &&
        id == other.id &&
        username == other.username &&
        isStaff == other.isStaff &&
        lastLogin == other.lastLogin &&
        lockedOut == other.lockedOut &&
        email == other.email &&
        accountId == other.accountId;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, id.hashCode), username.hashCode),
                        isStaff.hashCode),
                    lastLogin.hashCode),
                lockedOut.hashCode),
            email.hashCode),
        accountId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('User')
          ..add('id', id)
          ..add('username', username)
          ..add('isStaff', isStaff)
          ..add('lastLogin', lastLogin)
          ..add('lockedOut', lockedOut)
          ..add('email', email)
          ..add('accountId', accountId))
        .toString();
  }
}

class UserBuilder implements Builder<User, UserBuilder> {
  _$User _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _username;
  String get username => _$this._username;
  set username(String username) => _$this._username = username;

  bool _isStaff;
  bool get isStaff => _$this._isStaff;
  set isStaff(bool isStaff) => _$this._isStaff = isStaff;

  String _lastLogin;
  String get lastLogin => _$this._lastLogin;
  set lastLogin(String lastLogin) => _$this._lastLogin = lastLogin;

  bool _lockedOut;
  bool get lockedOut => _$this._lockedOut;
  set lockedOut(bool lockedOut) => _$this._lockedOut = lockedOut;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  String _accountId;
  String get accountId => _$this._accountId;
  set accountId(String accountId) => _$this._accountId = accountId;

  UserBuilder();

  UserBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _username = $v.username;
      _isStaff = $v.isStaff;
      _lastLogin = $v.lastLogin;
      _lockedOut = $v.lockedOut;
      _email = $v.email;
      _accountId = $v.accountId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(User other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$User;
  }

  @override
  void update(void Function(UserBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$User build() {
    final _$result = _$v ??
        new _$User._(
            id: BuiltValueNullFieldError.checkNotNull(id, 'User', 'id'),
            username: BuiltValueNullFieldError.checkNotNull(
                username, 'User', 'username'),
            isStaff: BuiltValueNullFieldError.checkNotNull(
                isStaff, 'User', 'isStaff'),
            lastLogin: BuiltValueNullFieldError.checkNotNull(
                lastLogin, 'User', 'lastLogin'),
            lockedOut: BuiltValueNullFieldError.checkNotNull(
                lockedOut, 'User', 'lockedOut'),
            email:
                BuiltValueNullFieldError.checkNotNull(email, 'User', 'email'),
            accountId: BuiltValueNullFieldError.checkNotNull(
                accountId, 'User', 'accountId'));
    replace(_$result);
    return _$result;
  }
}

class _$NetworkAccount extends NetworkAccount {
  @override
  final String id;
  @override
  final String name;
  @override
  final String avatarUrl;
  @override
  final Settings settings;
  @override
  final SubscriberAccount subscriberAccount;
  @override
  final List<String> geofences;
  @override
  final String parentId;

  factory _$NetworkAccount([void Function(NetworkAccountBuilder) updates]) =>
      (new NetworkAccountBuilder()..update(updates)).build();

  _$NetworkAccount._(
      {this.id,
      this.name,
      this.avatarUrl,
      this.settings,
      this.subscriberAccount,
      this.geofences,
      this.parentId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, 'NetworkAccount', 'id');
    BuiltValueNullFieldError.checkNotNull(name, 'NetworkAccount', 'name');
    BuiltValueNullFieldError.checkNotNull(
        avatarUrl, 'NetworkAccount', 'avatarUrl');
    BuiltValueNullFieldError.checkNotNull(
        settings, 'NetworkAccount', 'settings');
    BuiltValueNullFieldError.checkNotNull(
        subscriberAccount, 'NetworkAccount', 'subscriberAccount');
    BuiltValueNullFieldError.checkNotNull(
        geofences, 'NetworkAccount', 'geofences');
    BuiltValueNullFieldError.checkNotNull(
        parentId, 'NetworkAccount', 'parentId');
  }

  @override
  NetworkAccount rebuild(void Function(NetworkAccountBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NetworkAccountBuilder toBuilder() =>
      new NetworkAccountBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NetworkAccount &&
        id == other.id &&
        name == other.name &&
        avatarUrl == other.avatarUrl &&
        settings == other.settings &&
        subscriberAccount == other.subscriberAccount &&
        geofences == other.geofences &&
        parentId == other.parentId;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, id.hashCode), name.hashCode),
                        avatarUrl.hashCode),
                    settings.hashCode),
                subscriberAccount.hashCode),
            geofences.hashCode),
        parentId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NetworkAccount')
          ..add('id', id)
          ..add('name', name)
          ..add('avatarUrl', avatarUrl)
          ..add('settings', settings)
          ..add('subscriberAccount', subscriberAccount)
          ..add('geofences', geofences)
          ..add('parentId', parentId))
        .toString();
  }
}

class NetworkAccountBuilder
    implements Builder<NetworkAccount, NetworkAccountBuilder> {
  _$NetworkAccount _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _avatarUrl;
  String get avatarUrl => _$this._avatarUrl;
  set avatarUrl(String avatarUrl) => _$this._avatarUrl = avatarUrl;

  SettingsBuilder _settings;
  SettingsBuilder get settings => _$this._settings ??= new SettingsBuilder();
  set settings(SettingsBuilder settings) => _$this._settings = settings;

  SubscriberAccountBuilder _subscriberAccount;
  SubscriberAccountBuilder get subscriberAccount =>
      _$this._subscriberAccount ??= new SubscriberAccountBuilder();
  set subscriberAccount(SubscriberAccountBuilder subscriberAccount) =>
      _$this._subscriberAccount = subscriberAccount;

  List<String> _geofences;
  List<String> get geofences => _$this._geofences;
  set geofences(List<String> geofences) => _$this._geofences = geofences;

  String _parentId;
  String get parentId => _$this._parentId;
  set parentId(String parentId) => _$this._parentId = parentId;

  NetworkAccountBuilder();

  NetworkAccountBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _avatarUrl = $v.avatarUrl;
      _settings = $v.settings.toBuilder();
      _subscriberAccount = $v.subscriberAccount.toBuilder();
      _geofences = $v.geofences;
      _parentId = $v.parentId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NetworkAccount other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NetworkAccount;
  }

  @override
  void update(void Function(NetworkAccountBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$NetworkAccount build() {
    _$NetworkAccount _$result;
    try {
      _$result = _$v ??
          new _$NetworkAccount._(
              id: BuiltValueNullFieldError.checkNotNull(
                  id, 'NetworkAccount', 'id'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, 'NetworkAccount', 'name'),
              avatarUrl: BuiltValueNullFieldError.checkNotNull(
                  avatarUrl, 'NetworkAccount', 'avatarUrl'),
              settings: settings.build(),
              subscriberAccount: subscriberAccount.build(),
              geofences: BuiltValueNullFieldError.checkNotNull(
                  geofences, 'NetworkAccount', 'geofences'),
              parentId: BuiltValueNullFieldError.checkNotNull(
                  parentId, 'NetworkAccount', 'parentId'));
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'settings';
        settings.build();
        _$failedField = 'subscriberAccount';
        subscriberAccount.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'NetworkAccount', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$NetworkSettings extends NetworkSettings {
  @override
  final bool directoryEnabled;
  @override
  final bool shiftsEnabled;
  @override
  final bool formsEnabled;
  @override
  final String formsFolderId;
  @override
  final bool teamsEnabled;
  @override
  final int teamMembershipLimit;
  @override
  final bool devicePasscodeRequired;
  @override
  final bool passportEnabled;
  @override
  final bool passportLocationTrackingEnabled;
  @override
  final List<AccountProfileField> accountProfileFields;

  factory _$NetworkSettings([void Function(NetworkSettingsBuilder) updates]) =>
      (new NetworkSettingsBuilder()..update(updates)).build();

  _$NetworkSettings._(
      {this.directoryEnabled,
      this.shiftsEnabled,
      this.formsEnabled,
      this.formsFolderId,
      this.teamsEnabled,
      this.teamMembershipLimit,
      this.devicePasscodeRequired,
      this.passportEnabled,
      this.passportLocationTrackingEnabled,
      this.accountProfileFields})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        directoryEnabled, 'NetworkSettings', 'directoryEnabled');
    BuiltValueNullFieldError.checkNotNull(
        shiftsEnabled, 'NetworkSettings', 'shiftsEnabled');
    BuiltValueNullFieldError.checkNotNull(
        formsEnabled, 'NetworkSettings', 'formsEnabled');
    BuiltValueNullFieldError.checkNotNull(
        formsFolderId, 'NetworkSettings', 'formsFolderId');
    BuiltValueNullFieldError.checkNotNull(
        teamsEnabled, 'NetworkSettings', 'teamsEnabled');
    BuiltValueNullFieldError.checkNotNull(
        teamMembershipLimit, 'NetworkSettings', 'teamMembershipLimit');
    BuiltValueNullFieldError.checkNotNull(
        devicePasscodeRequired, 'NetworkSettings', 'devicePasscodeRequired');
    BuiltValueNullFieldError.checkNotNull(
        passportEnabled, 'NetworkSettings', 'passportEnabled');
    BuiltValueNullFieldError.checkNotNull(passportLocationTrackingEnabled,
        'NetworkSettings', 'passportLocationTrackingEnabled');
    BuiltValueNullFieldError.checkNotNull(
        accountProfileFields, 'NetworkSettings', 'accountProfileFields');
  }

  @override
  NetworkSettings rebuild(void Function(NetworkSettingsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NetworkSettingsBuilder toBuilder() =>
      new NetworkSettingsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NetworkSettings &&
        directoryEnabled == other.directoryEnabled &&
        shiftsEnabled == other.shiftsEnabled &&
        formsEnabled == other.formsEnabled &&
        formsFolderId == other.formsFolderId &&
        teamsEnabled == other.teamsEnabled &&
        teamMembershipLimit == other.teamMembershipLimit &&
        devicePasscodeRequired == other.devicePasscodeRequired &&
        passportEnabled == other.passportEnabled &&
        passportLocationTrackingEnabled ==
            other.passportLocationTrackingEnabled &&
        accountProfileFields == other.accountProfileFields;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc($jc(0, directoryEnabled.hashCode),
                                        shiftsEnabled.hashCode),
                                    formsEnabled.hashCode),
                                formsFolderId.hashCode),
                            teamsEnabled.hashCode),
                        teamMembershipLimit.hashCode),
                    devicePasscodeRequired.hashCode),
                passportEnabled.hashCode),
            passportLocationTrackingEnabled.hashCode),
        accountProfileFields.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NetworkSettings')
          ..add('directoryEnabled', directoryEnabled)
          ..add('shiftsEnabled', shiftsEnabled)
          ..add('formsEnabled', formsEnabled)
          ..add('formsFolderId', formsFolderId)
          ..add('teamsEnabled', teamsEnabled)
          ..add('teamMembershipLimit', teamMembershipLimit)
          ..add('devicePasscodeRequired', devicePasscodeRequired)
          ..add('passportEnabled', passportEnabled)
          ..add('passportLocationTrackingEnabled',
              passportLocationTrackingEnabled)
          ..add('accountProfileFields', accountProfileFields))
        .toString();
  }
}

class NetworkSettingsBuilder
    implements Builder<NetworkSettings, NetworkSettingsBuilder> {
  _$NetworkSettings _$v;

  bool _directoryEnabled;
  bool get directoryEnabled => _$this._directoryEnabled;
  set directoryEnabled(bool directoryEnabled) =>
      _$this._directoryEnabled = directoryEnabled;

  bool _shiftsEnabled;
  bool get shiftsEnabled => _$this._shiftsEnabled;
  set shiftsEnabled(bool shiftsEnabled) =>
      _$this._shiftsEnabled = shiftsEnabled;

  bool _formsEnabled;
  bool get formsEnabled => _$this._formsEnabled;
  set formsEnabled(bool formsEnabled) => _$this._formsEnabled = formsEnabled;

  String _formsFolderId;
  String get formsFolderId => _$this._formsFolderId;
  set formsFolderId(String formsFolderId) =>
      _$this._formsFolderId = formsFolderId;

  bool _teamsEnabled;
  bool get teamsEnabled => _$this._teamsEnabled;
  set teamsEnabled(bool teamsEnabled) => _$this._teamsEnabled = teamsEnabled;

  int _teamMembershipLimit;
  int get teamMembershipLimit => _$this._teamMembershipLimit;
  set teamMembershipLimit(int teamMembershipLimit) =>
      _$this._teamMembershipLimit = teamMembershipLimit;

  bool _devicePasscodeRequired;
  bool get devicePasscodeRequired => _$this._devicePasscodeRequired;
  set devicePasscodeRequired(bool devicePasscodeRequired) =>
      _$this._devicePasscodeRequired = devicePasscodeRequired;

  bool _passportEnabled;
  bool get passportEnabled => _$this._passportEnabled;
  set passportEnabled(bool passportEnabled) =>
      _$this._passportEnabled = passportEnabled;

  bool _passportLocationTrackingEnabled;
  bool get passportLocationTrackingEnabled =>
      _$this._passportLocationTrackingEnabled;
  set passportLocationTrackingEnabled(bool passportLocationTrackingEnabled) =>
      _$this._passportLocationTrackingEnabled = passportLocationTrackingEnabled;

  List<AccountProfileField> _accountProfileFields;
  List<AccountProfileField> get accountProfileFields =>
      _$this._accountProfileFields;
  set accountProfileFields(List<AccountProfileField> accountProfileFields) =>
      _$this._accountProfileFields = accountProfileFields;

  NetworkSettingsBuilder();

  NetworkSettingsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _directoryEnabled = $v.directoryEnabled;
      _shiftsEnabled = $v.shiftsEnabled;
      _formsEnabled = $v.formsEnabled;
      _formsFolderId = $v.formsFolderId;
      _teamsEnabled = $v.teamsEnabled;
      _teamMembershipLimit = $v.teamMembershipLimit;
      _devicePasscodeRequired = $v.devicePasscodeRequired;
      _passportEnabled = $v.passportEnabled;
      _passportLocationTrackingEnabled = $v.passportLocationTrackingEnabled;
      _accountProfileFields = $v.accountProfileFields;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NetworkSettings other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NetworkSettings;
  }

  @override
  void update(void Function(NetworkSettingsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$NetworkSettings build() {
    final _$result = _$v ??
        new _$NetworkSettings._(
            directoryEnabled: BuiltValueNullFieldError.checkNotNull(
                directoryEnabled, 'NetworkSettings', 'directoryEnabled'),
            shiftsEnabled: BuiltValueNullFieldError.checkNotNull(
                shiftsEnabled, 'NetworkSettings', 'shiftsEnabled'),
            formsEnabled: BuiltValueNullFieldError.checkNotNull(
                formsEnabled, 'NetworkSettings', 'formsEnabled'),
            formsFolderId: BuiltValueNullFieldError.checkNotNull(
                formsFolderId, 'NetworkSettings', 'formsFolderId'),
            teamsEnabled: BuiltValueNullFieldError.checkNotNull(
                teamsEnabled, 'NetworkSettings', 'teamsEnabled'),
            teamMembershipLimit: BuiltValueNullFieldError.checkNotNull(
                teamMembershipLimit, 'NetworkSettings', 'teamMembershipLimit'),
            devicePasscodeRequired: BuiltValueNullFieldError.checkNotNull(
                devicePasscodeRequired, 'NetworkSettings', 'devicePasscodeRequired'),
            passportEnabled:
                BuiltValueNullFieldError.checkNotNull(passportEnabled, 'NetworkSettings', 'passportEnabled'),
            passportLocationTrackingEnabled: BuiltValueNullFieldError.checkNotNull(passportLocationTrackingEnabled, 'NetworkSettings', 'passportLocationTrackingEnabled'),
            accountProfileFields: BuiltValueNullFieldError.checkNotNull(accountProfileFields, 'NetworkSettings', 'accountProfileFields'));
    replace(_$result);
    return _$result;
  }
}

class _$AccountProfileField extends AccountProfileField {
  @override
  final String name;
  @override
  final bool accountProfileFieldDefault;
  @override
  final String listId;
  @override
  final bool readOnly;
  @override
  final String emoji;

  factory _$AccountProfileField(
          [void Function(AccountProfileFieldBuilder) updates]) =>
      (new AccountProfileFieldBuilder()..update(updates)).build();

  _$AccountProfileField._(
      {this.name,
      this.accountProfileFieldDefault,
      this.listId,
      this.readOnly,
      this.emoji})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(name, 'AccountProfileField', 'name');
    BuiltValueNullFieldError.checkNotNull(accountProfileFieldDefault,
        'AccountProfileField', 'accountProfileFieldDefault');
    BuiltValueNullFieldError.checkNotNull(
        listId, 'AccountProfileField', 'listId');
    BuiltValueNullFieldError.checkNotNull(
        readOnly, 'AccountProfileField', 'readOnly');
    BuiltValueNullFieldError.checkNotNull(
        emoji, 'AccountProfileField', 'emoji');
  }

  @override
  AccountProfileField rebuild(
          void Function(AccountProfileFieldBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AccountProfileFieldBuilder toBuilder() =>
      new AccountProfileFieldBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AccountProfileField &&
        name == other.name &&
        accountProfileFieldDefault == other.accountProfileFieldDefault &&
        listId == other.listId &&
        readOnly == other.readOnly &&
        emoji == other.emoji;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, name.hashCode), accountProfileFieldDefault.hashCode),
                listId.hashCode),
            readOnly.hashCode),
        emoji.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AccountProfileField')
          ..add('name', name)
          ..add('accountProfileFieldDefault', accountProfileFieldDefault)
          ..add('listId', listId)
          ..add('readOnly', readOnly)
          ..add('emoji', emoji))
        .toString();
  }
}

class AccountProfileFieldBuilder
    implements Builder<AccountProfileField, AccountProfileFieldBuilder> {
  _$AccountProfileField _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  bool _accountProfileFieldDefault;
  bool get accountProfileFieldDefault => _$this._accountProfileFieldDefault;
  set accountProfileFieldDefault(bool accountProfileFieldDefault) =>
      _$this._accountProfileFieldDefault = accountProfileFieldDefault;

  String _listId;
  String get listId => _$this._listId;
  set listId(String listId) => _$this._listId = listId;

  bool _readOnly;
  bool get readOnly => _$this._readOnly;
  set readOnly(bool readOnly) => _$this._readOnly = readOnly;

  String _emoji;
  String get emoji => _$this._emoji;
  set emoji(String emoji) => _$this._emoji = emoji;

  AccountProfileFieldBuilder();

  AccountProfileFieldBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _accountProfileFieldDefault = $v.accountProfileFieldDefault;
      _listId = $v.listId;
      _readOnly = $v.readOnly;
      _emoji = $v.emoji;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AccountProfileField other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AccountProfileField;
  }

  @override
  void update(void Function(AccountProfileFieldBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AccountProfileField build() {
    final _$result = _$v ??
        new _$AccountProfileField._(
            name: BuiltValueNullFieldError.checkNotNull(
                name, 'AccountProfileField', 'name'),
            accountProfileFieldDefault: BuiltValueNullFieldError.checkNotNull(
                accountProfileFieldDefault,
                'AccountProfileField',
                'accountProfileFieldDefault'),
            listId: BuiltValueNullFieldError.checkNotNull(
                listId, 'AccountProfileField', 'listId'),
            readOnly: BuiltValueNullFieldError.checkNotNull(
                readOnly, 'AccountProfileField', 'readOnly'),
            emoji: BuiltValueNullFieldError.checkNotNull(
                emoji, 'AccountProfileField', 'emoji'));
    replace(_$result);
    return _$result;
  }
}

class _$SubscriberAccount extends SubscriberAccount {
  @override
  final String id;
  @override
  final bool isNetworkNotifier;
  @override
  final bool isShiftsGroupMember;
  @override
  final bool isShiftsApprover;

  factory _$SubscriberAccount(
          [void Function(SubscriberAccountBuilder) updates]) =>
      (new SubscriberAccountBuilder()..update(updates)).build();

  _$SubscriberAccount._(
      {this.id,
      this.isNetworkNotifier,
      this.isShiftsGroupMember,
      this.isShiftsApprover})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, 'SubscriberAccount', 'id');
    BuiltValueNullFieldError.checkNotNull(
        isNetworkNotifier, 'SubscriberAccount', 'isNetworkNotifier');
    BuiltValueNullFieldError.checkNotNull(
        isShiftsGroupMember, 'SubscriberAccount', 'isShiftsGroupMember');
    BuiltValueNullFieldError.checkNotNull(
        isShiftsApprover, 'SubscriberAccount', 'isShiftsApprover');
  }

  @override
  SubscriberAccount rebuild(void Function(SubscriberAccountBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SubscriberAccountBuilder toBuilder() =>
      new SubscriberAccountBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SubscriberAccount &&
        id == other.id &&
        isNetworkNotifier == other.isNetworkNotifier &&
        isShiftsGroupMember == other.isShiftsGroupMember &&
        isShiftsApprover == other.isShiftsApprover;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, id.hashCode), isNetworkNotifier.hashCode),
            isShiftsGroupMember.hashCode),
        isShiftsApprover.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SubscriberAccount')
          ..add('id', id)
          ..add('isNetworkNotifier', isNetworkNotifier)
          ..add('isShiftsGroupMember', isShiftsGroupMember)
          ..add('isShiftsApprover', isShiftsApprover))
        .toString();
  }
}

class SubscriberAccountBuilder
    implements Builder<SubscriberAccount, SubscriberAccountBuilder> {
  _$SubscriberAccount _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  bool _isNetworkNotifier;
  bool get isNetworkNotifier => _$this._isNetworkNotifier;
  set isNetworkNotifier(bool isNetworkNotifier) =>
      _$this._isNetworkNotifier = isNetworkNotifier;

  bool _isShiftsGroupMember;
  bool get isShiftsGroupMember => _$this._isShiftsGroupMember;
  set isShiftsGroupMember(bool isShiftsGroupMember) =>
      _$this._isShiftsGroupMember = isShiftsGroupMember;

  bool _isShiftsApprover;
  bool get isShiftsApprover => _$this._isShiftsApprover;
  set isShiftsApprover(bool isShiftsApprover) =>
      _$this._isShiftsApprover = isShiftsApprover;

  SubscriberAccountBuilder();

  SubscriberAccountBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _isNetworkNotifier = $v.isNetworkNotifier;
      _isShiftsGroupMember = $v.isShiftsGroupMember;
      _isShiftsApprover = $v.isShiftsApprover;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SubscriberAccount other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SubscriberAccount;
  }

  @override
  void update(void Function(SubscriberAccountBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SubscriberAccount build() {
    final _$result = _$v ??
        new _$SubscriberAccount._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, 'SubscriberAccount', 'id'),
            isNetworkNotifier: BuiltValueNullFieldError.checkNotNull(
                isNetworkNotifier, 'SubscriberAccount', 'isNetworkNotifier'),
            isShiftsGroupMember: BuiltValueNullFieldError.checkNotNull(
                isShiftsGroupMember,
                'SubscriberAccount',
                'isShiftsGroupMember'),
            isShiftsApprover: BuiltValueNullFieldError.checkNotNull(
                isShiftsApprover, 'SubscriberAccount', 'isShiftsApprover'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
