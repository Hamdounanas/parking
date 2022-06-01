import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:parking/routes/app_routes.dart';
import 'package:parking/widgets/snack_bar.dart';

class ProfileController extends GetxController {
  var inProgress = false;
  GlobalKey<FormState> keyForm = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  void updateProfileSettings() {
    getSuccessSnackBar(title: "Boxy", message: 'Mise à jour réussie !');
    Get.toNamed(Routes.home);
  }

  @override
  void onInit() {
    super.onInit();
  }
}
