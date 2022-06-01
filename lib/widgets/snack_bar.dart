import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:parking/style/colors.dart';

getErrorSnackBar({title: String, message: String}) {
  return Get.snackbar(
    title,
    message,
    borderRadius: 8,
    snackPosition: SnackPosition.TOP,
    isDismissible: true,
    backgroundColor: AppColors.gray,
    margin: const EdgeInsets.all(4),
    colorText: AppColors.primaryColor,
    duration: const Duration(milliseconds: 2500),
  );
}

getSuccessSnackBar({title: String, message: String}) {
  return Get.snackbar(
    title,
    message,
    borderRadius: 8,
    snackPosition: SnackPosition.TOP,
    isDismissible: true,
    messageText: Text(
      message,
    ),
    backgroundColor: AppColors.lightGray,
    margin: const EdgeInsets.all(4),
    colorText: AppColors.primaryColor,
    duration: const Duration(milliseconds: 2500),
  );
}
