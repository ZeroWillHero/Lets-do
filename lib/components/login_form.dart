import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:letsdo/components/custom_button.dart';
import 'package:letsdo/theme_data.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    // Reactive variable for password visibility
    var obscureText = true.obs;

    return Form(
      child: Column(
        children: [
          // Email field
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextFormField(
              decoration: const InputDecoration(
                labelText: 'Email',
                labelStyle: TextStyle(color: textColor),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: teritaryColor),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: primaryColor),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: primaryColor),
                ),
                filled: true,
                fillColor: secondaryColor,
              ),
              style: const TextStyle(color: Colors.white),
              keyboardType: TextInputType.emailAddress,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your email';
                }
                return null;
              },
            ),
          ),
          // Password field
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Obx(
              () => TextFormField(
                obscureText: obscureText.value,
                decoration: InputDecoration(
                  labelText: 'Password',
                  labelStyle: const TextStyle(color: textColor),
                  border: const OutlineInputBorder(
                    borderSide: BorderSide(color: teritaryColor),
                  ),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: secondaryColor),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: primaryColor),
                  ),
                  filled: true,
                  fillColor: secondaryColor,
                  suffixIcon: IconButton(
                    icon: Icon(
                      obscureText.value
                          ? Icons.visibility
                          : Icons.visibility_off,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      obscureText.value = !obscureText.value;
                    },
                  ),
                ),
                style: const TextStyle(color: Colors.white),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your password';
                  }
                  return null;
                },
              ),
            ),
          ),
          const SizedBox(height: 20),
          // Login button
          CustomButton(
            text: "Login",
            onPressed: () => {
              Get.toNamed('/dashboard')
            },
          ),
        ],
      ),
    );
  }
}
