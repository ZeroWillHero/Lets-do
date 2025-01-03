import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:letsdo/components/auth_card_component.dart';
import 'package:letsdo/components/login_form.dart';
import 'package:letsdo/theme_data.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
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
          padding: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Login into \nYour Account",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                ),
              ),
              const SizedBox(height: 20),
              const LoginForm(),
              const SizedBox(height: 40),
        
              const AuthCardComponent(
                  logo: 'assets/images/google.png',
                  title: 'Continue with google'),
              const SizedBox(height: 10),
              const AuthCardComponent(
                  logo: 'assets/images/facebook.png',
                  title: 'Continue with facebook'),
              const SizedBox(height: 20),
              Row(
                  mainAxisAlignment : MainAxisAlignment.center,
        
                children: [
                  const Text(
                    "Don't have an Account? ",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
        
                  GestureDetector(
                    onTap: () {
                      Get.toNamed('/register');
                    },
                    child: const Text(
                      "Sign Up",
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
