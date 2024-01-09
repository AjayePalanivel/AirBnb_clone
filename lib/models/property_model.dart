import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:uuid/uuid.dart';

class Property extends Equatable {
  final String id;
  final String description;
  final String propertyType;
  final String roomType;
  final double pricePerNight;
  final String country;
  final String city;
  final int maxGuests;
  final List<String> amenities;
  final String mainPhotoUrl;
  final List<String> photoUrls;

  Property.fromMap(Map<String, dynamic> map)
      : id = map['id'] ?? const Uuid().v4(),
        description = map['description'] as String,
        propertyType = map['propertyType'] as String,
        roomType = map['roomType'] as String,
        pricePerNight = map['pricePerNight'] as double,
        country = map['country'] as String,
        city = map['city'] as String,
        maxGuests = map['maxGuests'] as int,
        amenities = map['amenities'] as List<String>,
        mainPhotoUrl = map['mainPhotoUrl'] as String,
        photoUrls = map['photoUrls'] as List<String>;

  factory Property.fromJson(String str) =>
      Property.fromMap(jsonDecode(str) as Map<String, dynamic>);

  @override
  List<Object?> get props {
    return [
      id,
      description,
      propertyType,
      roomType,
      pricePerNight,
      country,
      city,
      maxGuests,
      amenities,
      mainPhotoUrl,
      photoUrls,
    ];
  }

  @override
  bool get stringify => true;
}
