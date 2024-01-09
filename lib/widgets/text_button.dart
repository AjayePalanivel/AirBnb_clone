import 'package:flutter/material.dart';

TextButton textButton({
  required BuildContext context,
  required String text,
  required TextStyle textTheme,
  required VoidCallback fun,
}) {
  return TextButton(
    onPressed: fun,
    child: Text(text, style: textTheme),
  );
}
