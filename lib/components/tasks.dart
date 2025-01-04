import 'package:flutter/material.dart';
import 'package:letsdo/theme_data.dart';

class TasksCard extends StatelessWidget {
  String title;
  
  TasksCard({super.key,required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: teritaryColor, width: 5),
      ),
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
                fontSize: 15, color: textColor, fontWeight: FontWeight.bold),
          ),
          
        ],
      ),
    );
  }
}
