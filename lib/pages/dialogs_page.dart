import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';
import 'package:navigation_dialog/pages/widgets/share_menu.dart';

class DialogPage extends StatelessWidget {
  //const DialogPage({Key? key}) : super(key: key);

  final options = ['Batman', 'Ironman', 'Doctor Strange'];

  void _showSimpleDialog(BuildContext context) {
    showDialog(
        context: context,
        //barrierDismissible: false,
        builder: (context) {
          return WillPopScope(
            onWillPop: () async => false,
            child: AlertDialog(
              title: const Text(
                'Simple Alert Dialog',
                textAlign: TextAlign.center,
              ),
              content: const Text("""
              also t we use it? It f a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).
            """),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
                    'Cancel',
                    style: TextStyle(
                      color: Colors.redAccent,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
                    'Ok',
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                ),
              ],
            ),
          );
        });
  }

  void _showCupertinoDialog(BuildContext context) {
    showCupertinoDialog(
      barrierDismissible: false,
      context: context,
      builder: (_) => BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
        child: CupertinoAlertDialog(
          title: const Text(
            'Simple CupertinoDialog',
            textAlign: TextAlign.center,
          ),
          content: const Text("""
              also t we use it? It f a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).
            """),
          actions: [
            CupertinoDialogAction(
              child: Text('Ok'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            CupertinoDialogAction(
              child: Text('Cancel'),
              onPressed: () {
                Navigator.pop(context);
              },
              isDestructiveAction: true,
            ),
          ],
        ),
      ),
    );
  }

  void _pickHero(BuildContext context) {
    showCupertinoModalPopup(
      context: context,
      filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
      builder: (_) => CupertinoActionSheet(
        title: const Text(
          'Pick Hero',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        message: const Text("""
              also t we use it? It f a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).
            """),
        actions: [
          ...List.generate(options.length, (index) {
            final String option = options[index];

            return CupertinoActionSheetAction(
              onPressed: () {
                Navigator.pop(context, option);
                print(option);
              },
              child: Text(option),
            );
          }),
          CupertinoActionSheetAction(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Cancel'),
            isDestructiveAction: true,
          )
        ],
      ),
    );
  }

  void _showCustomMenu(BuildContext context) async {
    final data = await showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (_) => ShareMenu(),
    );

    print(data);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ListTile(
            title: Text('Probando el ListTile'),
            onTap: () {
              _showSimpleDialog(context);
            },
          ),
          ListTile(
            title: Text('Probando Cupertino AlertDialog'),
            onTap: () {
              _showCupertinoDialog(context);
            },
          ),
          ListTile(
            title: Text('Pick a Hero'),
            onTap: () {
              _pickHero(context);
            },
          ),
          ListTile(
            title: Text('Custom Menu'),
            onTap: () {
              _showCustomMenu(context);
            },
          ),
        ],
      ),
    );
  }
}
