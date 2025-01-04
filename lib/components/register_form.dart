import 'package:flutter/material.dart';
import 'package:letsdo/components/custom_button.dart';
import 'package:letsdo/theme_data.dart';
import 'package:get/get.dart';

import '../controllers/auth/register_controller.dart';

class RegisterForm extends StatefulWidget {
  RegisterForm({super.key});

  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  // initialize the controller
  final controller = Get.put(RegisterController());
  final formKey = GlobalKey<FormState>();
  bool obscureText = true; // Regular bool variable for password visibility

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Form(
      key: formKey,
      child: Column(
        children: [
          // Full name field
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextFormField(
              onChanged: controller.onNameChanged,

              controller: TextEditingController()..text = controller.name.value,
              decoration: const InputDecoration(
                labelText: 'Full name',
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
                  return 'Please enter your full name';
                }
                return null;
              },
            ),
          ),
          // Email field
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextFormField(
              onChanged: controller.onEmailChanged,
              controller: TextEditingController()..text = controller.email.value,
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
            padding: const EdgeInsets.all(10.0),
            child: TextFormField(
              onChanged: controller.onPasswordChanged,

              controller: TextEditingController()..text = controller.password.value,
              obscureText: obscureText,
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
                    obscureText ? Icons.visibility : Icons.visibility_off,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    setState(() {
                      obscureText = !obscureText; // Toggle password visibility
                    });
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
          SizedBox(height: screenHeight * 0.02),
          // Register button
          CustomButton(
            text: "Register",
            onPressed: () {
              if (formKey.currentState!.validate()) {
                controller.register();
              }
            },
          ),
        ],
      ),
    );
  }
}