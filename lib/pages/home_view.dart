import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:letsdo/components/custom_button.dart';
import 'package:letsdo/theme_data.dart';

class Homeview extends StatelessWidget {
  const Homeview({super.key});

  final isAuth = false;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: backgroundColor,
        body: Center(
            child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width : screenWidth * 0.5,
          child: Image.asset('assets/images/background.png'),
        ),

        const Text("Welcome" , style: TextStyle(fontSize: 40, color: textColor,fontWeight: FontWeight.bold)),
        // const Text("to" , style: TextStyle(fontSize: 20, color: textColor)),

        // add a shader mark for gradient 
        ShaderMask(
          shaderCallback: (bounds) => gradientColor.createShader(bounds),
          child: const Text(
            "Let's Do",
            style: TextStyle(fontSize: 30, color: Colors.white,fontWeight: FontWeight.bold),
          ),
        ),

        Padding(
          padding: EdgeInsets.all(screenWidth * 0.1),
          child: const Text(textAlign: TextAlign.center,"Revolutionize how you manage your day with a sleek, intuitive to-do app designed for productivity enthusiasts. Tailored for simplicity and power, this app combines cutting-edge features with user-friendly design to help you organize, prioritize, and accomplish more, effortlessly."
          ,style: TextStyle(fontSize: 12, color: textColor),
          ),
        ),

        CustomButton(
          text: "Get Started", 
          onPressed: () => {
            isAuth == true ? Get.toNamed('/dashboard') : Get.toNamed('/login')
          }, 
          containerRadius: 20.0,
          buttonRadius: 20.0,
          buttonWidth: 300, 
          buttonHeight: 60,),
      ],
    )));
  }
}
