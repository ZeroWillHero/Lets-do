import 'package:flutter/material.dart';
import 'package:letsdo/theme_data.dart';

class FormBtn extends StatelessWidget {
  final String title;
  final Function onPressed;
  const FormBtn({super.key, required this.title, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        onPressed();
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: teritaryColor,
        foregroundColor: textColor,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        textStyle: const TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
      ),
      child:Text(title),
    );
  }
}
