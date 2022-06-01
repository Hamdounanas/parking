import 'package:parking/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'bording_controller.dart';

class BoardingPage extends GetView<BoardingController> {
  const BoardingPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: GetBuilder<BoardingController>(
          init: BoardingController(),
          initState: (_) {},
          builder: (controller) {
            return SafeArea(
              child: Container(
                width: size.width,
                height: size.height,
                color: AppColors.backgroundColor,
              ),
            );
          }),
    );
  }
}
