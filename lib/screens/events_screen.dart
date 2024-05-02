import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_puk_application/utils/app_constants.dart';

// ignore: must_be_immutable
class EventsScreen extends StatelessWidget {
  EventsScreen({super.key});

  List<DateTime?> _dates = [DateTime.now()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SafeArea(
        child: SizedBox(
          height: Get.height,
          width: Get.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(AppConstants.appPadding),
                child: Container(
                  decoration: BoxDecoration(
                    color:  AppConstants.white,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: CalendarDatePicker2(
                    config: CalendarDatePicker2Config(
                      calendarType: CalendarDatePicker2Type.single,
                      currentDate: DateTime.now(),
                      selectableDayPredicate: _isSelectableDay,
                    ),
                    value: _dates,
                    onValueChanged: (dates) => _dates = dates,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  // Function to determine if a day is selectable
  bool _isSelectableDay(DateTime day) {
    return !day.isBefore(DateTime.now().subtract(const Duration(days: 1)));
  }
}
