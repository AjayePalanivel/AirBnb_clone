import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

enum CalendarOptions { year, month, week, day }

class AppCalendar extends StatefulWidget {
  const AppCalendar({super.key});

  @override
  State<AppCalendar> createState() => _AppCalendarState();
}

class _AppCalendarState extends State<AppCalendar> {
  void _onSelectedChangedCallBack(DateRangePickerSelectionChangedArgs args) {}
  @override
  Widget build(BuildContext context) {
    return SfDateRangePicker(
      onSelectionChanged: _onSelectedChangedCallBack,
      selectionMode: DateRangePickerSelectionMode.range,
      initialSelectedRanges: <PickerDateRange>[
        PickerDateRange(
          DateTime.now().subtract(const Duration(days: 5)),
          DateTime.now().add(const Duration(days: 5)),
        ),
      ],
    );
  }
}

class SegmentedButtonWidget extends StatefulWidget {
  const SegmentedButtonWidget({super.key});

  @override
  State<SegmentedButtonWidget> createState() => _SegmentedButtonWidgetState();
}

class _SegmentedButtonWidgetState extends State<SegmentedButtonWidget> {
  CalendarOptions selected = CalendarOptions.month;
  @override
  Widget build(BuildContext context) {
    return SegmentedButton<CalendarOptions>(
      showSelectedIcon: false,
      segments: const <ButtonSegment<CalendarOptions>>[
        ButtonSegment<CalendarOptions>(
          value: CalendarOptions.day,
          label: Text('Dates'),
        ),
        ButtonSegment<CalendarOptions>(
          value: CalendarOptions.month,
          label: Text('Month'),
        ),
        ButtonSegment<CalendarOptions>(
          value: CalendarOptions.year,
          label: Text('Flexible'),
        ),
      ],
      selected: <CalendarOptions>{selected},
      onSelectionChanged: (newValue) {
        setState(() {
          selected = newValue.first;
        });
      },
    );
  }
}
