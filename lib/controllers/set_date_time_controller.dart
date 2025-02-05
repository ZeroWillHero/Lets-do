import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DateTimeController extends GetxController {
  var startTime = ''.obs;
  var endTime = ''.obs;

  Future<void> pickStartTime(BuildContext context) async {
    TimeOfDay? pickedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if (pickedTime != null) {
      startTime.value = pickedTime.format(context);
    }
  }

  Future<void> pickEndTime(BuildContext context) async {
    TimeOfDay? pickedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if (pickedTime != null) {
      endTime.value = pickedTime.format(context);
    }
  }
}
