import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:letsdo/components/app_form_btn.dart';
import 'package:letsdo/theme_data.dart';

import '../controllers/set_date_time_controller.dart';

class DateTimeForm extends StatelessWidget {
  DateTimeForm({super.key});

  final DateTimeController controller = Get.put(DateTimeController());

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Start Time Field
          Obx(() => TextFormField(
            decoration: const InputDecoration(
              labelText: 'Start Time',
              labelStyle: TextStyle(color: textColor),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: teritaryColor),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: teritaryColor),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: teritaryColor),
              ),
            ),
            style: const TextStyle(fontSize: 16.0, color: textColor),
            readOnly: true,
            onTap: () => controller.pickStartTime(context),
            controller: TextEditingController(text: controller.startTime.value),
          )),

          const SizedBox(height: 16.0),

          // End Time Field
          Obx(() => TextFormField(
            decoration: const InputDecoration(
              labelText: 'End Time',
              labelStyle: TextStyle(color: textColor),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: teritaryColor),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: teritaryColor),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: teritaryColor),
              ),
            ),
            style: const TextStyle(fontSize: 16.0, color: textColor),
            readOnly: true,
            onTap: () => controller.pickEndTime(context),
            controller: TextEditingController(text: controller.endTime.value),
          )),

          const SizedBox(height: 16.0),

          // Submit Button
          FormBtn(title: "Set Date and Time",onPressed: () {},),
        ],
      ),
    );
  }
}