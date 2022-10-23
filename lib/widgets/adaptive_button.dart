import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class AdaptiveButton extends StatelessWidget {
  final String text;
  final Function onPressed;
  const AdaptiveButton({Key key, this.text, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoButton(
            child: Text(
              text,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            onPressed: onPressed,
          )
        : TextButton(
            style: TextButton.styleFrom(
              primary: Theme.of(context).primaryColorDark,
            ),
            onPressed: onPressed,
            child: Text(
              text,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          );
  }
}
