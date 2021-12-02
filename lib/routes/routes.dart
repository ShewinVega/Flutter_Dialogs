import 'package:flutter/material.dart';
import 'package:navigation_dialog/pages/dialogs_page.dart';
import 'package:navigation_dialog/pages/home_page.dart';
import 'package:navigation_dialog/pages/login_page.dart';
import 'package:navigation_dialog/pages/second_page.dart';
import 'package:navigation_dialog/pages/settings_page.dart';

final Map<String, Widget Function(BuildContext)> appRoutes = {
  'home': (_) => HomePage(),
  'login': (_) => LoginPage(),
  'secondPage': (_) => SecondPage(),
  'settingPage': (_) => SettingPage(),
  'dialogPage': (_) => DialogPage(),
};
