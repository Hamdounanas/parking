import 'package:get/get.dart';
import 'package:parking/screens/splashscreen/splash_controller.dart';

class SplashBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SplashController>(() => SplashController());
  }
}
