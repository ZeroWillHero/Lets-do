import 'package:flutter/material.dart';
import 'package:letsdo/components/date_time_form.dart';
import 'package:letsdo/theme_data.dart';

class SetDateTimeCard extends StatelessWidget {
  const SetDateTimeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      width: MediaQuery.of(context).size.width * 1,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: teritaryColor, width: 5),
      ),
      child:  Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Set Date and Time",
                style: TextStyle(fontSize: 20, color: teritaryColor)),
            const Text(
              "Adjust your Time for Specific work",
              style: TextStyle(fontSize: 10, color: textColor),
            ),
            const SizedBox(height: 10),
            DateTimeForm(),
          ],
        ),
      ),
    );
  }
}
