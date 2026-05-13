import 'dart:async';

import 'src/flutter_sms_platform.dart';

const String _discontinuedMessage =
    'This fork of flutter_sms is discontinued. '
    'Migrate to the flutter_sms package on pub.dev: https://pub.dev/packages/flutter_sms';

/// Open SMS Dialog on iOS/Android/Web
@Deprecated(_discontinuedMessage)
Future<String> sendSMS({
  required String message,
  required List<String> recipients,
  bool sendDirect = false,
}) =>
    FlutterSmsPlatform.instance.sendSMS(
      message: message,
      recipients: recipients,
      sendDirect: sendDirect,
    );

/// Launch SMS Url Scheme on all platforms
@Deprecated(_discontinuedMessage)
Future<bool> launchSms({
  String? message,
  String? number,
}) =>
    FlutterSmsPlatform.instance.launchSms(number, message);

/// Launch SMS Url Scheme on all platforms
@Deprecated(_discontinuedMessage)
Future<bool> launchSmsMulti({
  required String message,
  required List<String> numbers,
}) =>
    FlutterSmsPlatform.instance.launchSmsMulti(numbers, message);

/// Check if you can send SMS on this platform
@Deprecated(_discontinuedMessage)
Future<bool> canSendSMS() => FlutterSmsPlatform.instance.canSendSMS();
