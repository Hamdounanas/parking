import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:parking/binding/bording_binding.dart';
import 'package:parking/binding/home_binding.dart';
import 'package:parking/binding/profile_binding.dart';
import 'package:parking/binding/signin_binding.dart';
import 'package:parking/binding/signup_binding.dart';
import 'package:parking/binding/splash_binding.dart';
import 'package:parking/screens/authentication/sign_in/sign_in.dart';
import 'package:parking/screens/authentication/sign_up/sign_up.dart';
import 'package:parking/screens/home/home_page.dart';
import 'package:parking/screens/onbordingscreen/bording_screen.dart';
import 'package:parking/screens/profile/profile.dart';
import 'package:parking/screens/splashscreen/splash_screen.dart';
import 'app_routes.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: Routes.splash,
      page: () => const SplashPage(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: Routes.signin,
      page: () => const SignInPage(),
      binding: SignInBinding(),
    ),
    GetPage(
      name: Routes.signup,
      page: () => const SignUpPage(),
      binding: SignUpBinding(),
    ),
    GetPage(
      name: Routes.profile,
      page: () => const ProfilePage(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: Routes.boarding,
      page: () => const BoardingPage(),
      binding: BoardingBinding(),
    ),
    GetPage(
      name: Routes.home,
      page: () => const HomePage(),
      binding: HomeBinding(),
    ),
  ];
}
