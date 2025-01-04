import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

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
      final AuthResponse res = await supabase.auth.signUp(
        email: email.value,
        password: password.value,
        data: {'fullName': name.value},
      );

      if (res.user == null) {
        throw Exception('Registration failed');
      }

      Get.toNamed('/login');

      Get.snackbar(
        "Success",
        "User registered successfully",
        snackPosition: SnackPosition.TOP,
        backgroundColor: Colors.green,
        colorText: Colors.white,
        borderRadius: 10,
        margin: const EdgeInsets.all(10),
        duration: const Duration(seconds: 3),
      );
    } catch (error) {
      Get.snackbar(
        "Error",
        error.toString(),
        snackPosition: SnackPosition.TOP,
        backgroundColor: Colors.red,
        colorText: Colors.white,
        borderRadius: 10,
        margin: const EdgeInsets.all(10),
        duration: const Duration(seconds: 3),
      );
    } finally {
      isLoading.value = false;
    }
  }
}
