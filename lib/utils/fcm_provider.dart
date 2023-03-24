import 'dart:io';
import 'package:firebase_messaging/firebase_messaging.dart'
    show FirebaseMessaging, RemoteMessage;
import 'package:flutter/widgets.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

import '../models/video_notification.dart';
import 'firebase_service.dart';

class FCMProvider with ChangeNotifier {
  static BuildContext? _context;

  static void setContext(BuildContext context) =>
      FCMProvider._context = context;

  static BuildContext? get context => _context;

  /// when app is in the foreground
  static Future<void> onTapNotification(NotificationResponse? response) async {
    if (FCMProvider._context == null ||
        response == null ||
        response.payload == null ||
        response.payload!.isEmpty) return;

    navigateToPage(
        FCMProvider._context, VideoNotification.fromJson(response.payload!));
  }

  static Future<void> onMessage() async {
    FirebaseMessaging.onMessage.listen((RemoteMessage message) async {
      // if (FCMProvider.refreshNotifications != null) await FCMProvider.refreshNotifications!(true);
      // if this is available when Platform.isIOS, you'll receive the notification twice
      if (Platform.isAndroid) {
        await FirebaseService.localNotificationsPlugin.show(
          0,
          message.notification!.title ?? "",
          message.notification!.body ?? "",
          FirebaseService.platformChannelSpecifics,
          payload: message.data.toString(),
        );
      }
    });
  }

  static Future<void> backgroundHandler(RemoteMessage message) async {
    await FlutterLocalNotificationsPlugin().show(
        0,
        message.notification?.title ?? "",
        message.notification?.body ?? "",
        FirebaseService.platformChannelSpecifics,
        payload: message.data.toString());

    navigateToPage(FCMProvider._context,
        VideoNotification.fromJson(message.data.toString()));
  }

  static void navigateToPage(
      BuildContext? context, VideoNotification videoNotification) {
    if (context == null) return;
    Navigator.of(context)
        .pushNamed(videoNotification.page!, arguments: videoNotification);
  }
}
