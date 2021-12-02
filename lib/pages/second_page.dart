import 'package:flutter/material.dart';
import 'package:navigation_dialog/pages/settings_page.dart';

class SecondPage extends StatelessWidget {
  //final String? name;
  const SecondPage({Key? key /* , this.name */}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Psamos el parametro que viene en la ruta
    final data = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            final canPop = Navigator.canPop(context);
            if (canPop) {
              Navigator.pop(context, 'Advanced Ideas Developers');
            }
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              final routes = MaterialPageRoute(builder: (_) => SettingPage());
              Navigator.push(context, routes);
            },
          ),
        ],
      ),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(data),
            ],
          ),
        ),
      ),
    );
  }
}
