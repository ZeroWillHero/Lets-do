import 'package:flutter/material.dart';

class AuthCardComponent extends StatelessWidget {
  final String logo;
  final String title;
  const AuthCardComponent({
    required this.logo,
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Center(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.white,
        ),
        width: screenWidth * 0.8,
        height: 40,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(logo, width: 30, height: 30),
            Text(title,style: const TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
            ),

      
          ],
        ),
      ),
    );
  }
}
