import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();

  bool inProgress = false;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  void onInit() {
    super.onInit();
  }

  void signUp() {
    inProgress = true;
    try {
      //Sign in service
      var email = emailController.text;
      var password = passwordController.text;
      var confirmPassword = confirmPasswordController.text;
      var firstName = firstNameController.text;
      var lastName = lastNameController.text;
      var phoneNumber = phoneNumberController.text;
    } catch (e) {
      print(e);
    } finally {
      inProgress = false;
      emailController.text = "";
      passwordController.text = "";
    }
    update();
  }
}
