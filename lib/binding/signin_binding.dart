import 'package:get/get.dart';
import 'package:parking/screens/authentication/sign_in/signin_controller.dart';

class SignInBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignInController());
  }
}
