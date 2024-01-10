import 'package:airbnb_clone/models/booking_step_model.dart';
import 'package:airbnb_clone/utils/color_pallet.dart';
import 'package:airbnb_clone/widgets/app_calendar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class SelectDateWidget extends StatelessWidget {
  final BookingStep step;
  const SelectDateWidget({super.key, required this.step});

  @override
  Widget build(BuildContext context) {
    // final size = MediaQuery.of(context).size;
    // var expandedHeight = size.height - 112 - 60 - 32 - 16 - 60;
    // 112 = appBar height + top safeArea height
    // 60 = destination selection height
    // 32 = top + bottom padding
    // 16 = margin below each card
    return Card(
      elevation: 0,
      clipBehavior: Clip.antiAlias,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        height: step == BookingStep.selectDate ? 576 : 60,
        width: double.infinity,
        padding: const EdgeInsets.all(16),
        child: step == BookingStep.selectDate
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'When\'s your trip?',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                  ),
                  const SizedBox(height: 16.0),
                  const SizedBox(
                    height: 48,
                    child: Row(
                        children: [Expanded(child: SegmentedButtonWidget())]),
                  ),
                  const SizedBox(height: 16.0),
                  const SizedBox(height: 300, child: AppCalendar()),
                  const Spacer(),
                  const Divider(color: appRed, thickness: 1),
                  SizedBox(
                    height: 48,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        OutlinedButton(
                          onPressed: () {},
                          child: const Text(
                            'Exact dates',
                            style: TextStyle(color: appRed),
                          ),
                        ),
                        const SizedBox(width: 8),
                        OutlinedButton(
                          onPressed: () {},
                          child: const Text(
                            '± 1 day',
                            style: TextStyle(color: appRed),
                          ),
                        ),
                        const SizedBox(width: 8),
                        OutlinedButton(
                          onPressed: () {},
                          child: const Text(
                            '± 2 days',
                            style: TextStyle(color: appRed),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Divider(color: appRed, thickness: 1),
                  const SizedBox(height: 4),
                  SizedBox(
                    height: 48,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                          onPressed: () {
                            if (step == BookingStep.selectDestination) {
                            } else {}
                          },
                          child: const Text(
                            'Skip',
                            style: TextStyle(color: appRed),
                          ),
                        ),
                        FilledButton(
                          onPressed: () {},
                          style: FilledButton.styleFrom(
                            backgroundColor: appRed,
                            minimumSize: const Size(120, 48),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                          child: const Text(
                            'Next',
                            style: TextStyle(color: appWhite),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ).animate().fadeIn(delay: const Duration(milliseconds: 300))
            : Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'When',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  Text(
                    'I\'m flexible',
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
      ),
    );
  }
}
