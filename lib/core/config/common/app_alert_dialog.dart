import 'package:flutter/material.dart';

class AppAlertDialog {
  AppAlertDialog._();

  static Future<T?> showAppAlertDialog<T>(
    BuildContext context, {
    required Widget dialog,
  }) {
    return showDialog<T>(
      context: context,
      builder: (context) {
        return dialog;
      },
    );
  }
}
