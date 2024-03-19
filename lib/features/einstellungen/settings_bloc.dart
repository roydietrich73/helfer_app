import 'package:flutter/material.dart';

class Settings {
  bool notificationsEnabled;

  Settings({required this.notificationsEnabled});
}

class SettingsBloc with ChangeNotifier {
  Settings _settings = Settings(notificationsEnabled: true);

  Settings get settings => _settings;

  void updateNotifications(bool enabled) {
    _settings.notificationsEnabled = enabled;
    notifyListeners();
  }
}
