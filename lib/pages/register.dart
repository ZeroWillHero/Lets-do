import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:letsdo/components/auth_card_component.dart';
import 'package:letsdo/components/register_form.dart';
import 'package:letsdo/theme_data.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Get.back();
          },
        ),
      ),
      body:  SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20.0, 10.0, 10.0, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Create\nYour Account",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                ),
              ),
              SizedBox(height: screenHeight * 0.02),
        
              const RegisterForm(),
        
               SizedBox(height: screenHeight * 0.1),
        
              const AuthCardComponent(
                  logo: 'assets/images/google.png',
                  title: 'Continue with google'),
              SizedBox(height: screenHeight * 0.01),
              const AuthCardComponent(
                  logo: 'assets/images/facebook.png',
                  title: 'Continue with facebook'),
              SizedBox(height: screenHeight * 0.02),
              Row(
                  mainAxisAlignment : MainAxisAlignment.center,
        
                children: [
                  const Text(
                    "Already have an Account? ",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
        
                  GestureDetector(
                    onTap: () {
                      Get.toNamed('/login');
                    },
                    child: const Text(
                      "Sign in",
                      style: TextStyle(
                        color: teritaryColor,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}