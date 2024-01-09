import 'package:airbnb_clone/utils/color_pallet.dart';
import 'package:flutter/material.dart';

class BookingDetailScreen extends StatefulWidget {
  const BookingDetailScreen({super.key});

  @override
  State<BookingDetailScreen> createState() => _BookingDetailScreenState();
}

class _BookingDetailScreenState extends State<BookingDetailScreen> {
  @override
  Widget build(BuildContext context) {
    final textTheam = Theme.of(context).textTheme;
    return Scaffold(
      backgroundColor: appWhite.withOpacity(0.5),
    );
  }
}
