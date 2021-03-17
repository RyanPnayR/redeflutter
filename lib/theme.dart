import "package:redeflutter/util/HexColor.dart";
import "package:flutter/material.dart";

// ignore: non_constant_identifier_names
class AppTheme {
  static const pixelMultiplier = 1.0;
  static const appMargin = 12.0 * pixelMultiplier;
  static const avatarSize = 36.0 * pixelMultiplier;
  static const appBarSize = 64.0;

  static const fontFamilyPoppinsExtraBold = "Poppins-ExtraBold";
  static const fontFamilyPoppinsRegular = "Poppins-Regular";
  static const fontFamilyEdmondsansRegular = "Edmondsans-Regular";
  static const fontFamilyEdmondsansMedium = "Edmondsans-Medium";
  static const fontFamilyEdmondsansBold = "Edmondsans-Bold";

  static const colorDarkBlue = Color.fromRGBO(23, 38, 157, 1.0);
  static const colorDarkBlueFont = Color.fromRGBO(4, 24, 138, 1.0);
  static final colorDarkBlueImageSelection = HexColor("#04188A");
  static const colorDarkGreen = Color.fromRGBO(33, 127, 125, 1.0);
  static const colorLightGreen = Color.fromRGBO(207, 244, 234, 1.0);
  static const colorMintGreen = Color.fromRGBO(54, 207, 166, 1.0);
  static const colorRed = Color.fromRGBO(255, 72, 103, 1.0);
  static const colorShadow = Color.fromRGBO(204, 204, 204, 1.0);
  static const colorTextDisabled = Color.fromRGBO(153, 153, 153, 1.0);
  static const colorTextEnabled = Color.fromRGBO(0, 0, 0, 1.0);
  static const colorTextLink = Color.fromRGBO(74, 144, 226, 1.0);
  static const colorGrey128 = Color.fromRGBO(128, 128, 128, 1.0);
  static const colorGrey128_25 = Color.fromRGBO(128, 128, 128, 0.25);
  static const colorGrey128_50 = Color.fromRGBO(128, 128, 128, 0.5);
  static const colorGrey155 = Color.fromRGBO(155, 155, 155, 1.0);
  static const colorGrey225 = Color.fromRGBO(225, 225, 225, 1.0);
  static const colorGrey241 = Color.fromRGBO(241, 241, 241, 1.0);
  static final colorWhite_50 = Colors.white.withOpacity(0.5);

  static final black = HexColor("#000000");
  static final drawerBackground = HexColor("#ffffff");
  static final drawerHeader = HexColor("#BFBFBF");
  static final drawerDivider = HexColor("#767676");
  static final darkGray = HexColor("#5A5A5A");
  static final mediumGray = HexColor("#909090");
  static final lightGray = HexColor("#E9E9E9");
  static final redeRed = HexColor("#C72535");
  static final redeRed_50 = HexColor("#80c72535");
  static final redeRed_25 = HexColor("#40c72535");
  static final actionBarBackground = HexColor("#E9E9EB");
  static final messageBubbleSentColor = HexColor("#057CFD");
  static final messageBubbleReceivedColor = HexColor("#E9E9EB");
  static final dateHeaderColor = HexColor("#BFBFBF");
  static final transparent = HexColor("#00FFFFFF");
  static final requestShiftRed = HexColor("#AF0A04");
  static final requestShiftGreen = HexColor("#88BA59");
  static final invisibleDividerColor = HexColor("#686667");
  static final dividerColor = HexColor("#767676");
  static final blueFont = HexColor("#7491BC");
  static final whiteGrey = HexColor("#cecfcf");
  static final purple = HexColor("#9564b8");
  static final emergencyYellow = HexColor("#f0da68");
  static final green = HexColor("#64b873");
  static final virusOrange = HexColor("#e68454");
  static final networkSubitem = HexColor("#999999");
  static final networkSwitcherBackground = HexColor("#ededee");
  static final loginBackgroundBoxGray = HexColor("#f4f5f5");
  static final networkSwitcherGray = HexColor("#f8f8f8");
  static final conversationListGray = HexColor("#f8f9f9");

  static ThemeData get theme {
    return ThemeData.light().copyWith(
      primaryColor: Colors.black,
      accentColor: Colors.black,
    );
  }

  // Redeapp
  static ButtonStyle get signupButton {
    return ElevatedButton.styleFrom(
            side: BorderSide(width: 1.0, color: Colors.black))
        .copyWith(
      backgroundColor: MaterialStateProperty.resolveWith<Color>(
        (Set<MaterialState> states) {
          if (states.contains(MaterialState.pressed)) return redeRed;
          return Colors.white; // Use the component's default.
        },
      ),
    );
  }

  static TextStyle get conversationContactText {
    return TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle get conversationDateText {
    return TextStyle(color: mediumGray, fontSize: 12);
  }

  static TextStyle get conversationSubjectText {
    return TextStyle(color: mediumGray, fontSize: 16);
  }

  static TextStyle get signupButtonText {
    return TextStyle(color: redeRed);
  }

  static ButtonStyle get signinButton {
    return ElevatedButton.styleFrom().copyWith(
      backgroundColor: MaterialStateProperty.resolveWith<Color>(
        (Set<MaterialState> states) {
          if (states.contains(MaterialState.pressed)) return Colors.white;
          return redeRed; // Use the component's default.
        },
      ),
    );
  }

  static TextStyle get signinButtonText {
    return TextStyle(color: redeRed);
  }

  static TextStyle get forgotPasswordButtonText {
    return TextStyle(color: mediumGray, fontSize: 12);
  }

  static TextStyle get signupButtonLinkText {
    return TextStyle(
      color: black,
      fontWeight: FontWeight.bold,
    );
  }

  /// Calendar

  static TextStyle get calendarDayTitle {
    return theme.textTheme.headline.copyWith(
      color: colorDarkBlue,
      fontSize: 16,
      fontFamily: fontFamilyEdmondsansBold,
    );
  }

  static TextStyle get calendarListEventName {
    return theme.textTheme.headline.copyWith(
      color: colorDarkBlue,
      fontSize: 16,
      fontFamily: fontFamilyEdmondsansMedium,
    );
  }

  static TextStyle get calendarListGroupName {
    return theme.textTheme.headline.copyWith(
      color: colorDarkBlue.withAlpha(150),
      fontSize: 16,
      fontFamily: fontFamilyEdmondsansMedium,
    );
  }

  static TextStyle get calendarListTime {
    return theme.textTheme.headline.copyWith(
      color: Colors.white,
      fontSize: 12,
      fontFamily: fontFamilyEdmondsansMedium,
    );
  }

  ///

  static TextStyle get eventIconMemberTitle {
    return theme.textTheme.headline.copyWith(
      color: Colors.white,
      fontSize: 11,
      fontFamily: fontFamilyEdmondsansBold,
    );
  }

  static TextStyle get eventIconTitle {
    return theme.textTheme.headline.copyWith(
      color: colorDarkBlueFont,
      fontSize: 11,
      fontFamily: fontFamilyEdmondsansBold,
    );
  }

  static TextStyle get eventIconMemberSubTitle {
    return theme.textTheme.headline.copyWith(
      color: Colors.white,
      fontSize: 8,
      height: 0.7,
      fontFamily: fontFamilyEdmondsansBold,
    );
  }

  static TextStyle get eventIconSubTitle {
    return theme.textTheme.headline.copyWith(
      color: colorDarkBlueFont,
      fontSize: 8,
      height: 0.7,
      fontFamily: fontFamilyEdmondsansBold,
    );
  }

  static TextStyle get channelTitle {
    return theme.textTheme.headline.copyWith(
      color: Colors.black,
      fontSize: 16,
      fontFamily: fontFamilyEdmondsansBold,
    );
  }

  static TextStyle get channelSubTitle {
    return TextStyle(
      color: AppTheme.colorTextDisabled,
      fontSize: 16,
      fontFamily: fontFamilyEdmondsansRegular,
    );
  }

  static get circleMenuAbbreviationText {
    return TextStyle(
      fontSize: 16 * pixelMultiplier,
      fontFamily: fontFamilyEdmondsansBold,
      color: colorTextEnabled,
    );
  }

  static TextStyle get circleTitle {
    return theme.textTheme.headline.copyWith(
      color: colorDarkBlueFont,
      fontSize: 24,
      fontFamily: fontFamilyEdmondsansBold,
    );
  }

  static TextStyle get circleSectionButtonTitle {
    return theme.textTheme.headline.copyWith(
      color: colorDarkBlueFont,
      fontSize: 16,
      fontFamily: fontFamilyEdmondsansBold,
    );
  }

  static TextStyle get circleSectionChannelTitle {
    return theme.textTheme.headline.copyWith(
      color: colorDarkBlue,
      fontSize: 16,
      fontFamily: fontFamilyEdmondsansMedium,
    );
  }

  static TextStyle get circleSectionTitle {
    return theme.textTheme.headline.copyWith(
      color: colorDarkBlueFont.withOpacity(0.4),
      fontSize: 12,
      letterSpacing: 1,
      fontFamily: fontFamilyEdmondsansBold,
    );
  }

  static TextStyle get notificationTitle {
    return theme.textTheme.body1.copyWith(
      color: Colors.white,
      fontSize: 16,
      fontWeight: FontWeight.w800,
      fontFamily: fontFamilyPoppinsExtraBold,
    );
  }

  static TextStyle get notificationTime {
    return theme.textTheme.body1.copyWith(
      color: Colors.white,
      fontSize: 12,
      fontFamily: fontFamilyEdmondsansRegular,
    );
  }

  static TextStyle get notificationBody {
    return theme.textTheme.body1.copyWith(
      color: Colors.white,
      fontSize: 16,
      fontFamily: fontFamilyEdmondsansRegular,
    );
  }

  static TextStyle get buttonTextStyle {
    return TextStyle(
      fontSize: 16 * pixelMultiplier,
      fontFamily: fontFamilyEdmondsansBold,
    );
  }

  static TextStyle get buttonMediumTextStyle {
    return TextStyle(
      fontSize: 16 * pixelMultiplier,
      fontFamily: fontFamilyEdmondsansMedium,
    );
  }

  static TextStyle get inputHintTextStyle {
    return TextStyle(
      fontSize: 16 * pixelMultiplier,
      fontFamily: fontFamilyEdmondsansRegular,
      color: colorTextDisabled,
    );
  }

  static TextStyle get inputTextStyle {
    return TextStyle(
      fontSize: 16 * pixelMultiplier,
      fontFamily: fontFamilyEdmondsansRegular,
      color: colorTextEnabled,
    );
  }

  static TextStyle get optionTextStyle {
    return TextStyle(
      fontSize: 20,
      fontFamily: fontFamilyEdmondsansMedium,
      color: colorTextEnabled,
    );
  }

  static TextStyle get messageAuthorNameTextStyle {
    return TextStyle(
      fontSize: 16 * pixelMultiplier,
      fontFamily: fontFamilyEdmondsansBold,
      color: colorTextEnabled,
    );
  }

  static TextStyle get messageTimestampTextStyle {
    return TextStyle(
      fontSize: 12 * pixelMultiplier,
      fontFamily: fontFamilyEdmondsansRegular,
      color: colorTextDisabled,
    );
  }

  static TextStyle get messageTextStyle {
    return TextStyle(
      fontSize: 16 * pixelMultiplier,
      height: 1.5,
      fontFamily: fontFamilyEdmondsansRegular,
      color: colorTextEnabled,
    );
  }

  static TextStyle get linkTextStyle {
    return TextStyle(
      fontSize: 16 * pixelMultiplier,
      fontFamily: fontFamilyEdmondsansRegular,
      color: colorTextLink,
    );
  }

  static get systemMessageTextStyle {
    return TextStyle(
      fontSize: 12 * pixelMultiplier,
      fontFamily: fontFamilyEdmondsansMedium,
      color: colorTextDisabled,
    );
  }

  static get emojiReactionTextStyle {
    return TextStyle(
      fontSize: 12 * pixelMultiplier,
      fontFamily: fontFamilyEdmondsansBold,
      color: colorTextEnabled,
    );
  }

  static TextStyle get appBarTitleTextStyle {
    return TextStyle(
      fontSize: 20,
      fontFamily: fontFamilyEdmondsansMedium,
      color: colorTextEnabled,
    );
  }

  static TextStyle get appBarTitle2TextStyle {
    return TextStyle(
      fontSize: 16,
      fontFamily: fontFamilyEdmondsansMedium,
      color: colorTextEnabled,
    );
  }

  static TextStyle get appBarSubtitleTextStyle {
    return TextStyle(
      fontSize: 16,
      fontFamily: fontFamilyEdmondsansRegular,
      color: colorTextEnabled,
    );
  }

  static TextStyle get appBarActionTextStyle {
    return TextStyle(
      fontSize: 16,
      fontFamily: fontFamilyEdmondsansBold,
      color: colorTextEnabled,
    );
  }

  static TextStyle get appBarActionDisabledTextStyle {
    return TextStyle(
      fontSize: 16,
      fontFamily: fontFamilyEdmondsansBold,
      color: colorTextDisabled,
    );
  }

  static TextStyle get inputMediumTextStyle {
    return TextStyle(
      fontSize: 16,
      fontFamily: fontFamilyEdmondsansMedium,
      color: colorTextEnabled,
    );
  }

  static TextStyle get switchTitleTextStyle {
    return TextStyle(
      fontSize: 16,
      fontFamily: fontFamilyEdmondsansMedium,
      color: colorTextEnabled,
    );
  }

  static TextStyle get switchSubtitleTextStyle {
    return TextStyle(
      fontSize: 12,
      fontFamily: fontFamilyEdmondsansMedium,
      color: colorGrey128,
    );
  }

  static TextStyle get topicDetailsNameTextStyle {
    return TextStyle(
      fontSize: 24,
      fontFamily: fontFamilyEdmondsansBold,
      color: colorDarkBlueFont,
    );
  }

  static TextStyle get topicDetailsDescriptionTextStyle {
    return TextStyle(
      fontSize: 16,
      fontFamily: fontFamilyEdmondsansRegular,
      color: colorDarkBlueFont,
    );
  }

  static TextStyle get topicDetailsTabTextStyle {
    return TextStyle(
      fontSize: 16,
      fontFamily: fontFamilyEdmondsansBold,
      color: colorDarkBlueFont,
    );
  }

  static TextStyle get topicDetailsItemTextStyle {
    return TextStyle(
      fontSize: 16,
      fontFamily: fontFamilyEdmondsansBold,
      color: colorTextEnabled,
    );
  }

  static TextStyle get topicDetailsItemSubtitleTextStyle {
    return TextStyle(
      fontSize: 16,
      fontFamily: fontFamilyEdmondsansRegular,
      color: colorTextEnabled,
    );
  }

  static TextStyle get dialogRsvpTextStyle {
    return TextStyle(
      fontFamily: AppTheme.fontFamilyEdmondsansBold,
      fontSize: 16,
    );
  }

  static TextStyle get plusManyPicturesTextStyle {
    return TextStyle(
      fontFamily: AppTheme.fontFamilyPoppinsRegular,
      fontSize: 32,
    );
  }

  static TextStyle get dialogRsvpYesTextStyle {
    return dialogRsvpTextStyle.apply(color: AppTheme.colorMintGreen);
  }

  static TextStyle get dialogRsvpMaybeTextStyle {
    return dialogRsvpTextStyle.apply(color: AppTheme.colorDarkBlue);
  }

  static TextStyle get dialogRsvpNoTextStyle {
    return dialogRsvpTextStyle.apply(color: AppTheme.colorRed);
  }

  static InputDecorationTheme get inputDecorationEmptyTheme {
    return _inputDecorationTheme(
      baseColor: colorGrey128,
    );
  }

  static InputDecorationTheme get inputDecorationFilledTheme {
    return _inputDecorationTheme(
      baseColor: colorDarkBlueFont,
    );
  }

  static InputDecorationTheme get inputDecorationErrorTheme {
    return _inputDecorationTheme(
      baseColor: colorRed,
    );
  }

  static InputDecorationTheme _inputDecorationTheme({
    baseColor: Color,
    textColor: Color,
  }) {
    return InputDecorationTheme(
      border: OutlineInputBorder(borderSide: BorderSide(color: baseColor)),
      enabledBorder:
          OutlineInputBorder(borderSide: BorderSide(color: baseColor)),
      focusedBorder:
          OutlineInputBorder(borderSide: BorderSide(color: baseColor)),
      errorBorder: OutlineInputBorder(borderSide: BorderSide(color: colorRed)),
      errorStyle: TextStyle(
        fontSize: 12,
        fontFamily: fontFamilyEdmondsansRegular,
        color: colorRed,
      ),
      focusedErrorBorder:
          OutlineInputBorder(borderSide: BorderSide(color: colorRed)),
      labelStyle: TextStyle(
        fontSize: 16,
        fontFamily: fontFamilyEdmondsansMedium,
        color: baseColor,
      ),
      helperStyle: TextStyle(
        fontSize: 12,
        fontFamily: fontFamilyEdmondsansRegular,
        color: colorGrey128,
      ),
    );
  }
}
