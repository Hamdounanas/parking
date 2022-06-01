import 'package:flutter/material.dart';
import 'package:parking/style/text.dart';

showMyDialog(context, title, message) {
  return showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: Text(title, style: AppTextStyle.bigBoldText),
        content: Text(message, style: AppTextStyle.smallBoldText),
        actions: <Widget>[
          TextButton(
            child: const Text('Ok', style: AppTextStyle.tinyBoldBlueText),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          TextButton(
            child: const Text('Cancel', style: AppTextStyle.tinyBoldBlueText),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
