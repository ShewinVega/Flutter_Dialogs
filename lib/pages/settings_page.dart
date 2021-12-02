import 'package:flutter/material.dart';
import 'package:navigation_dialog/pages/login_page.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        key: key,
        child: TextButton(
          child: const Text(
            'Sign out',
          ),
          onPressed: () {
            final Route route = MaterialPageRoute(
              builder: (_) => LoginPage(),
            );

            Navigator.pushAndRemoveUntil(
              context,
              route,
              (route) {
                print("route.settings.name ${route.settings.name}");
                return route.settings.name == '/';
              },
            );
          },
        ),
      ),
    );
  }
}
