import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';

class RegisterController extends GetxController {
  var name = "".obs;
  var email = "".obs;
  var password = "".obs;

  var isLoading = false.obs;

  final supabase = Supabase.instance.client;

  void onNameChanged(String value) {
    name.value = value;
  }

  void onEmailChanged(String value) {
    email.value = value;
  }

  void onPasswordChanged(String value) {
    password.value = value;
  }

  void setLoading(bool value) {
    isLoading.value = value;
  }

  Future<void> register() async {
  isLoading.value = true;
  try {
    // Validate input fields
    if (name.value.isEmpty || email.value.isEmpty || password.value.isEmpty) {
      throw Exception('Please fill all fields');
    }

    if (!GetUtils.isEmail(email.value)) {
      throw Exception('Please enter a valid email');
    }

    // Check if email already exists
    final PostgrestList existingUsers = await supabase
        .from('users') // Replace 'users' with your Supabase user table if it's named differently
        .select('email')
        .eq('email', email.value);

    // Proceed with signup
    final AuthResponse res = await supabase.auth.signUp(
      email: email.value,
      password: password.value,
      data: {'fullName': name.value},
    );

    if (res.user == null) {
      throw Exception('Registration failed');
    }

    // Redirect to login and show success message
    Get.toNamed('/login');
    Get.snackbar(
      "Success",
      "Registration successful! Please check your email for verification.",
      snackPosition: SnackPosition.TOP,
      backgroundColor: Colors.green,
      colorText: Colors.white,
      borderRadius: 10,
      margin: const EdgeInsets.all(10),
      duration: const Duration(seconds: 3),
      snackStyle: SnackStyle.FLOATING,
      isDismissible: true,
      forwardAnimationCurve: Curves.easeOutBack,
      icon: Icon(Icons.check_circle, color: Colors.white),
      shouldIconPulse: true,
      mainButton: TextButton(
      onPressed: () {},
      child: Text(
        'OK',
        style: TextStyle(color: Colors.white),
      ),
      ),
    );
  } on Exception catch (error) {
    print(error);
    // Show error message
    Get.snackbar(
      "Error",
      error.toString(),
      snackPosition: SnackPosition.TOP,
      backgroundColor: Colors.red,
      colorText: Colors.white,
      borderRadius: 10,
      margin: const EdgeInsets.all(10),
      duration: const Duration(seconds: 3),
      snackStyle: SnackStyle.FLOATING,
      isDismissible: true,
      forwardAnimationCurve: Curves.easeOutBack,
      icon: Icon(Icons.error, color: Colors.white),
      shouldIconPulse: true,
      mainButton: TextButton(
      onPressed: () {},
      child: Text(
        'OK',
        style: TextStyle(color: Colors.white),
      ),
      ),
    );
  } finally {
    isLoading.value = false;
  }
}

}
