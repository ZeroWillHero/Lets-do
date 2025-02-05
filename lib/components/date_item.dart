import 'package:flutter/material.dart';
import 'package:letsdo/theme_data.dart';

class DateItem extends StatelessWidget {
  final String day;
  final bool isSelected;
  const DateItem({super.key, required this.day, this.isSelected = false});

  @override
  Widget build(BuildContext context) {

    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        color: Colors.transparent,
        border: Border.all(
          color: isSelected ? teritaryColor : textColor,
          width: 5,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(
          day,
          style: const TextStyle(
            color: textColor,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
