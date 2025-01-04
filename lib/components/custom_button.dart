import 'package:flutter/material.dart';
import 'package:letsdo/theme_data.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final double? containerRadius;
  final double? buttonRadius;
  final double? buttonHeight;
  final double? buttonWidth;
  final double? fontSize;

  const CustomButton({ 
    required this.text , 
    required this.onPressed, 
    this.containerRadius = 8.0,
    this.buttonRadius = 8.0,
    this.buttonHeight = 50.0,
    this.buttonWidth = 200.0,
    this.fontSize = 20.0,
    super.key});


  @override
  Widget build(BuildContext context) {
    return Container(
      width: buttonWidth!,
      height: buttonHeight!,
      decoration: BoxDecoration(
        // gradient: gradientColor,
        borderRadius: BorderRadius.circular(containerRadius!),
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: teritaryColor,
          shadowColor: textColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(buttonRadius!),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: fontSize!,
            ),
        ),
      ),
    );
  }
}