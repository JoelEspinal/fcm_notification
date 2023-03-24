import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'models/video_notification.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    final videoNotification =
        ModalRoute.of(context)!.settings.arguments as VideoNotification;

    DateFormat dateFormat = DateFormat('yyyy-mm-dd hh:mm:ss');

    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text('Camera Name: ${videoNotification.cameraName}'),
            Text(
                'Start Time: ${dateFormat.format(videoNotification.startTime!)}'),
            Text(
                'End Time: ${dateFormat.format(videoNotification.startTime!)}'),
          ],
        ),
      ),
    );
  }
}
