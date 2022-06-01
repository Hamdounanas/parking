import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:parking/screens/authentication/sign_up/signup_controller.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: GetBuilder<SignUpController>(
        init: SignUpController(),
        initState: (_) {},
        builder: (controller) {
          return SizedBox(
            width: size.width,
            height: size.height,
          );
        },
      ),
    );
  }
}
