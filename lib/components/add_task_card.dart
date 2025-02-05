import 'package:flutter/material.dart';
import 'package:letsdo/components/create_task_from.dart';
import 'package:letsdo/theme_data.dart';

class AddTaskCard extends StatelessWidget {
  const AddTaskCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      width: MediaQuery.of(context).size.width * 1,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: teritaryColor, width: 5),
      ),
      child: const Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Create Task",
                style: TextStyle(fontSize: 20, color: teritaryColor)),
            Text(
              "create your's task here",
              style: TextStyle(fontSize: 10, color: textColor),
            ),
            SizedBox(height: 10),
      
            CreateTaskFrom(),
            
          ],
        ),
      ),
    );
  }
}