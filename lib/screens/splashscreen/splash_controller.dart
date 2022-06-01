import 'package:get/get.dart';
import 'package:parking/routes/app_pages.dart';
import 'package:parking/routes/app_routes.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    navigate();
    super.onInit();
  }

  Future navigate() async {
    Future.delayed(const Duration(milliseconds: 3000), () async {
      Get.offAllNamed(Routes.signin);
    });
  }
}
