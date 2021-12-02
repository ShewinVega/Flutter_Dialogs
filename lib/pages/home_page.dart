import 'package:flutter/material.dart';
import 'package:navigation_dialog/pages/second_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          key: key,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('First Page'),
              TextButton(
                key: key,
                onPressed: () async {
                  /* final routes = MaterialPageRoute<String>(
                      builder: (_) => const SecondPage(
                            name: 'Shewin Vega',
                          ));
                  final data = await Navigator.push<String>(context, routes);
                  print(data); */
                  Navigator.pushNamed(context, 'secondPage',
                      arguments: 'No esta Nulo Carnal ');
                },
                child: const Text(
                  'Go to SecondPage',
                ),
                style: TextButton.styleFrom(
                  primary: Colors.black,
                  backgroundColor: Colors.redAccent,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
