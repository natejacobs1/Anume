import 'package:flutter/material.dart';

class NotificationProvider with ChangeNotifier {
  bool _notificationsEnabled = false;

  bool get notificationsEnabled => _notificationsEnabled;

  void toggleNotifications() {
    _notificationsEnabled = !_notificationsEnabled;
    notifyListeners();
  }
} 