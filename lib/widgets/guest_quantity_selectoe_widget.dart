import 'package:flutter/material.dart';

Container buildGuestsQuantitySelector(
  BuildContext context,
  String title,
  String subtitle,
  VoidCallback onDecrement,
  VoidCallback onIncrement,
  String value,
) {
  final textTheme = Theme.of(context).textTheme;

  return Container(
    margin: const EdgeInsets.only(bottom: 8.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: textTheme.bodyLarge),
            Text(subtitle, style: textTheme.bodySmall),
          ],
        ),
        Row(
          children: [
            IconButton(
              onPressed: onDecrement,
              icon: const Icon(Icons.remove),
            ),
            Text(
              value,
              style:
                  textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.bold),
            ),
            IconButton(
              onPressed: onIncrement,
              icon: const Icon(Icons.add),
            ),
          ],
        ),
      ],
    ),
  );
}
