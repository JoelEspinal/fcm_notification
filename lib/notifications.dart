import 'package:flutter/material.dart';

class FCMProvider with ChangeNotifier {
  static BuildContext? _context;

  static void setContext(BuildContext context) =>
      FCMProvider._context = context;
}
