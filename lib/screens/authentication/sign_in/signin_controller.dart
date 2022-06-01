import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class SignInController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool inProgress = false;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  void onInit() {
    super.onInit();
  }

  void signIn() {
    inProgress = true;
    try {
      //Sign in service
      var email = emailController.text;
      var password = passwordController.text;
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
