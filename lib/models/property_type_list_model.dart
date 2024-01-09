import 'package:flutter/material.dart';

final List<Map<String, dynamic>> properties = [
  {'type': 'Hotel', 'icon': Icons.hotel},
  {'type': 'Apartment', 'icon': Icons.apartment},
  {'type': 'BnB', 'icon': Icons.bedroom_child},
  {'type': 'Villa', 'icon': Icons.villa},
  {'type': 'Resort', 'icon': Icons.holiday_village},
];

class PropertyTypeListModel {
  final String type;
  final IconData icon;

  PropertyTypeListModel({required this.type, required this.icon});

  PropertyTypeListModel.fromMap(Map<String, dynamic> map)
      : type = map['type'] as String,
        icon = map['icon'] as IconData;
}
