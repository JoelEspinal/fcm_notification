import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';
import 'models/video_notification.dart';
import 'notification_page.dart';
import 'utils/fcm_provider.dart';

class App extends StatefulWidget {
  RemoteMessage? message;

  App({super.key, this.message});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Builder(
        builder: (ctx) {
          FCMProvider.setContext(ctx);
          return HomePage();
        },
      ),
      routes: {
        '/notifications': (context) => const NotificationPage(),
      },
    );
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      FCMProvider.setContext(context);
      if (widget.message != null) {
        VideoNotification videoNotification =
            VideoNotification.fromJson(widget.message!.data.toString());
        FCMProvider.navigateToPage(FCMProvider.context, videoNotification);
      }
    });
  }
}
