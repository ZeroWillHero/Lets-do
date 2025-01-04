import 'package:flutter/material.dart';
import 'package:letsdo/theme_data.dart';

class MainPageLinks extends StatelessWidget {
  final bool isActive;
  final Icon icon;
  const MainPageLinks({ required this.isActive,required this.icon,super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Container(
          margin:  EdgeInsets.only(bottom:screenHeight * 0.020 ),
          child: Icon(
            icon.icon,
            color: isActive ? teritaryColor : textColor,
            size: 30,
          ),
        ),
      ],
    );
  }
}
