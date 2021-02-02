import 'package:flutter/material.dart';

class ErrorDialog extends StatelessWidget {
  final String message;
  ErrorDialog(this.message);
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Container(
        child: Text(message),
      ),
    );
  }
}
