import 'package:flutter/material.dart';
import 'package:get/get.dart';
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

      body: const Padding(
        padding: EdgeInsets.fromLTRB(10.0,10.0,10.0,0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Login into \nYour Account",
              style: TextStyle(
                color: Colors.white,
                fontSize: 40,
              ),
            ),

            SizedBox(height: 20),

            LoginForm(),

          ],
        ),
      ),
    );
  }
}