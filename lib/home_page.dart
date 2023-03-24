import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

import 'models/video_notification.dart';

class HomePage extends StatelessWidget {
// used to pass messages from event handler to the UI
  final _messageStreamController = BehaviorSubject<RemoteMessage>();

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    _messageStreamController.listen((message) async {
      VideoNotification videoNotification =
          VideoNotification.fromMap(message.data);
    });

    return Scaffold(
      body: Center(
        child: Title(
          color: Colors.grey,
          child: const Text('Home Page'),
        ),
      ),
    );
  }
}
