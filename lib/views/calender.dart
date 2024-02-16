import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:flutter/material.dart';

class DatePickerComponent extends StatelessWidget {
  DatePickerComponent({
    Key? key,
    this.onDateSelect,
  }) : super(key: key);

  final List<DateTime?> selectedDates = [];
  final void Function(List<DateTime?>)? onDateSelect;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CalendarDatePicker2(
        config: CalendarDatePicker2Config(
          calendarType:
              CalendarDatePicker2Type.range, // Set calendarType to range
          selectedDayHighlightColor: Colors.orange,
          firstDate: DateTime.now(),
          lastDate: DateTime(2100),
          currentDate: DateTime.now(),
          selectedDayTextStyle: const TextStyle(
              backgroundColor: Colors.orange, color: Colors.orange),
          dayTextStyle: const TextStyle(
            backgroundColor: Colors.orange,
            color: Colors.orange,
            fontSize: 10,
          ),
          weekdayLabelTextStyle: TextStyle(
            fontSize: 12,
            color: Colors.orange.withOpacity(0.5),
          ),

          weekdayLabels: ["SUN", "MON", "TUE", "WED", "THU", "FRI", "SAT"],
        ),
        value: selectedDates,
        onValueChanged: (List<DateTime?> value) {
          if (onDateSelect != null) {
            onDateSelect!(value);
          }
        },
      ),
    );
  }
}
