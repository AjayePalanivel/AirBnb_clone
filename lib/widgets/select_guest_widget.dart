import 'package:airbnb_clone/models/booking_step_model.dart';
import 'package:airbnb_clone/widgets/guest_quantity_selectoe_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class SelectGuestWidget extends StatefulWidget {
  final BookingStep step;
  const SelectGuestWidget({super.key, required this.step});

  @override
  State<SelectGuestWidget> createState() => _SelectGuestWidgetState();
}

class _SelectGuestWidgetState extends State<SelectGuestWidget> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final step = widget.step;
    return Card(
      elevation: 0,
      clipBehavior: Clip.antiAlias,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        height: step == BookingStep.selectGuests ? 274 : 60,
        padding: const EdgeInsets.all(16),
        width: double.infinity,
        child: step == BookingStep.selectGuests
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Who\'s coming?',
                    style: textTheme.headlineSmall!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  SizedBox(
                    height: 190,
                    child: ListView(
                      physics: const NeverScrollableScrollPhysics(),
                      padding: EdgeInsets.zero,
                      children: [
                        buildGuestsQuantitySelector(
                          context,
                          'Adults',
                          'Ages 13 or above',
                          () {},
                          () {},
                          '0',
                        ),
                        const Divider(),
                        buildGuestsQuantitySelector(
                          context,
                          'Children',
                          'Ages 2-12',
                          () {},
                          () {},
                          '0',
                        ),
                        const Divider(),
                        buildGuestsQuantitySelector(
                          context,
                          'Infants',
                          'Under 2',
                          () {},
                          () {},
                          '0',
                        ),
                      ],
                    ),
                  ),
                ],
              )
                .animate(delay: const Duration(milliseconds: 300))
                .fadeIn(duration: const Duration(milliseconds: 300))
            : Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Who',
                    style: textTheme.bodyMedium,
                  ),
                  Text(
                    'Add Guest',
                    style: textTheme.bodyMedium!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
      ),
    );
  }
}
