import 'dart:ui';

import 'package:airbnb_clone/models/booking_step_model.dart';
import 'package:airbnb_clone/utils/color_pallet.dart';
import 'package:airbnb_clone/widgets/select_date_widget.dart';
import 'package:airbnb_clone/widgets/select_destination_widget.dart';
import 'package:airbnb_clone/widgets/select_guest_widget.dart';
import 'package:airbnb_clone/widgets/text_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookingDetailScreen extends StatefulWidget {
  const BookingDetailScreen({super.key});

  @override
  State<BookingDetailScreen> createState() => _BookingDetailScreenState();
}

class _BookingDetailScreenState extends State<BookingDetailScreen> {
  var step = BookingStep.nunOfEach;
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 4, sigmaY: 8),
      child: Scaffold(
        backgroundColor: appWhite.withOpacity(0.5),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          automaticallyImplyLeading: false,
          leading: SizedBox(
            width: 42,
            child: IconButton(
              onPressed: () => context.pop(),
              icon: const Icon(Icons.close),
            ),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              textButton(
                context: context,
                text: 'Stays',
                textTheme: textTheme.titleMedium!
                    .copyWith(fontWeight: FontWeight.bold),
                fun: () {},
              ),
              textButton(
                context: context,
                text: 'Experiences',
                textTheme: textTheme.titleMedium!,
                fun: () {},
              ),
            ],
          ),
          actions: const [SizedBox(width: 42)],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      step = BookingStep.selectDestination;
                    });
                  },
                  child: Hero(
                    tag: 'Search',
                    child: SelectDestinationWidget(step: step),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      step = BookingStep.selectDate;
                    });
                  },
                  child: SelectDateWidget(step: step),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      step = BookingStep.selectGuests;
                    });
                  },
                  child: SelectGuestWidget(step: step),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
