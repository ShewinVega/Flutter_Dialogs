import 'package:flutter/material.dart';
import 'package:navigation_dialog/pages/home_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        key: key,
        child: TextButton(
          child: Text('Go to Home'),
          onPressed: () {
            final Route route = MaterialPageRoute(
              builder: (_) => HomePage(),
            );

            Navigator.pushReplacement(context, route);
          },
        ),
      ),
    );
  }
}
