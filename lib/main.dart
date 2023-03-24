import 'package:flutter/material.dart';
import 'package:flutter_notifications/app.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:rxdart/rxdart.dart';
import 'utils/firebase_service.dart';

// used to pass messages from event handler to the UI
final _messageStreamController = BehaviorSubject<RemoteMessage>();

// const iosSetting = IOSInitializationSettings(requestSoundPermission: true);

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // await messaging.requestPermission(
  //   alert: true,
  //   announcement: false,
  //   badge: true,
  //   carPlay: false,
  //   criticalAlert: false,
  //   provisional: false,
  //   sound: true,
  // );

  // FirebaseMessaging.onMessage.listen((RemoteMessage message) {
  //   if (kDebugMode) {
  //     print('Handling a foreground message: ${message.messageId}');
  //     print('Message data: ${message.data}');
  //     print('Message notification: ${message.notification?.title}');
  //     print('Message notification: ${message.notification?.body}');
  //   }

  //   _messageStreamController.sink.add(message);
  // });

  WidgetsFlutterBinding.ensureInitialized();
  await FirebaseService.initializeFirebase();
  final RemoteMessage? _message =
      await FirebaseService.firebaseMessaging.getInitialMessage();

  runApp(
    App(message: _message),
  );
}


// class MyHomePage extends StatefulWidget {
//   String title = 'Hola Mundo';

//   MyHomePage({super.key});
//   @override
//   State<StatefulWidget> createState() {
//     return _MyHomePageState();
//   }
// }

// class _MyHomePageState extends State<MyHomePage> {
//   String _lastMessage = "";

//   _MyHomePageState() {
//     _messageStreamController.listen((message) async {
// setState(() {
//   if (message.notification != null) {
//     _lastMessage = 'Received a notification message:'
//         '\nTitle=${message.notification?.title},'
//         '\nBody=${message.notification?.body},'
//         '\nData=${message.data}';
//   } else {
//     _lastMessage = 'Received a data message: ${message.data}';
//   }
// });

//   VideoNotification videoNotification =
//       VideoNotification.fromMap(message.data);
//   if (videoNotification != null) {
//     navigateToPage(context, videoNotification);
//   }
//   });
// }

// @override
// Widget build(BuildContext context) {
//   return Scaffold(
//     appBar: AppBar(
//       title: Text(widget.title),
//     ),
//     body: Center(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: <Widget>[
//           Text('Last message from Firebase Messaging:',
//               style: Theme.of(context).textTheme.titleLarge),
//           Text(_lastMessage, style: Theme.of(context).textTheme.bodyLarge),
//         ],
//       ),
//     ),
//   );
// }
// }
