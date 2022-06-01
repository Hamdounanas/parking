import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:parking/routes/app_routes.dart';
import 'package:parking/screens/authentication/sign_in/signin_controller.dart';
import 'package:parking/style/colors.dart';
import 'package:parking/style/text.dart';
import 'package:parking/widgets/item.dart';

import 'home_controller.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: AppColors.primaryColor,
              ),
              child: Text(
                'MY-ISSATSO-PARKING',
                style: AppTextStyle.smallBoldWhiteText,
              ),
            ),
            ListTile(
              title: const Text(
                'Profile',
                style: AppTextStyle.smallBoldText,
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text(
                'Reservation',
                style: AppTextStyle.smallBoldText,
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text(
                'History',
                style: AppTextStyle.smallBoldText,
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text(
                'Assistance',
                style: AppTextStyle.smallBoldText,
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text(
          'Home',
          style: AppTextStyle.smallBoldWhiteText,
        ),
        centerTitle: true,
        backgroundColor: AppColors.primaryColor,
        elevation: 0,
      ),
      body: GetBuilder<SignInController>(
          init: SignInController(),
          initState: (_) {},
          builder: (controller) {
            return SafeArea(
              child: Container(
                width: size.width,
                height: size.height,
                padding: const EdgeInsets.all(10),
                color: AppColors.secondaryColor.withOpacity(0.2),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Item(
                              title: "Profile",
                              icon: Icons.person,
                              height: 200,
                              width: 200,
                              onclick: () {
                                Get.toNamed(Routes.profile);
                              }),
                          Item(
                              title: "Reservation",
                              icon: Icons.calendar_today,
                              height: 200,
                              width: 200,
                              onclick: () {}),
                        ]),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Item(
                            title: "History",
                            icon: Icons.history,
                            height: 200,
                            width: 200,
                            onclick: () {}),
                        Item(
                            title: "Assistance",
                            icon: Icons.assistant,
                            height: 200,
                            width: 200,
                            onclick: () {}),
                      ],
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
