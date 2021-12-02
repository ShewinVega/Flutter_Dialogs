import 'package:flutter/material.dart';
import 'package:navigation_dialog/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Navigation Dialog',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: 'dialogPage',
        routes: appRoutes);
  }
}
