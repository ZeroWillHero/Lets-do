import 'package:flutter/material.dart';
import 'package:letsdo/components/tasks.dart';
import 'package:letsdo/theme_data.dart';

class TaskDetailsCard extends StatelessWidget {
  const TaskDetailsCard({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      width: screenWidth,
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: teritaryColor, width: 5),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Top Tasks",
                style: TextStyle(
                    fontSize: 20,
                    color: textColor,
                    fontWeight: FontWeight.bold),
              ),

              SizedBox(height: 10),

              // Task 1
              TasksCard(title: "Task 01 "),
              TasksCard(title: "Task 02 "),
              TasksCard(title: "Task 03 "),
              

            ]),
      ),
    );
  }
}
