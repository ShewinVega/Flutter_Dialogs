import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShareMenu extends StatelessWidget {
  const ShareMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: SafeArea(
          top: false,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                //margin: const EdgeInsets.only(bottom: 5),
                width: 50,
                height: 4,
                color: Colors.grey.withOpacity(0.5),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Share question',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Divider(),
              _MenuItem(
                onPressed: () {},
                texto: 'Add question to Bookmarks',
                iconData: Icons.bookmark_border_outlined,
              ),
              _MenuItem(
                onPressed: () {},
                texto: 'Share question via ...',
                iconData: Icons.ios_share,
              ),
              SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: CupertinoButton(
                  child: const Text('Send'),
                  color: Colors.blue,
                  onPressed: () {
                    Navigator.pop(context, 'que nota');
                  },
                ),
              ),
              SizedBox(height: 5),
            ],
          ),
        ),
      ),
    );
  }
}

class _MenuItem extends StatelessWidget {
  final void Function() onPressed;
  final String texto;
  final IconData iconData;

  const _MenuItem(
      {Key? key,
      required this.onPressed,
      required this.texto,
      required this.iconData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      onPressed: () {
        Navigator.pop(context);
      },
      child: Row(
        children: [
          Icon(
            this.iconData,
            color: Colors.black,
          ),
          SizedBox(width: 5),
          Expanded(
            child: Text(
              this.texto,
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
