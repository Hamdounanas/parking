import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:parking/screens/profile/profile_controller.dart';
import 'package:parking/style/colors.dart';
import 'package:parking/style/text.dart';
import 'package:parking/widgets/buttons.dart';
import 'package:parking/widgets/date_picker.dart';
import 'package:parking/widgets/drop_down_button.dart';
import 'package:parking/widgets/text_field.dart';

class ProfilePage extends GetView<ProfileController> {
  const ProfilePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var xSpace = 10.0;
    var ySpace = 20.0;
    return Scaffold(
      body: GetBuilder<ProfileController>(
          init: ProfileController(),
          initState: (_) {},
          builder: (controller) {
            return SafeArea(
              child: Container(
                width: size.width,
                height: size.height,
                color: AppColors.backgroundColor,
                padding: const EdgeInsets.all(10),
                child: SingleChildScrollView(
                  child: Form(
                    key: controller.keyForm,
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 20.0,
                        ),
                        //Title
                        SizedBox(
                          width: size.width,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                "Profile",
                                style: AppTextStyle.bigBoldText,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 120,
                        ),
                        //FIRST AND LAST NAME
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            //first name
                            SizedBox(
                              width: size.width * 0.45,
                              child: AppTextField(
                                label: "First name",
                                hint: "Foulen",
                                borderRadius: 0,
                                editingController:
                                    controller.firstNameController,
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "first name is required";
                                  }
                                  return null;
                                },
                              ),
                            ),
                            //last name
                            SizedBox(
                              width: size.width * 0.45,
                              child: AppTextField(
                                label: "Last name",
                                hint: "Benfoulen",
                                borderRadius: 0,
                                editingController:
                                    controller.lastNameController,
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "last name is required";
                                  }
                                  return null;
                                },
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: ySpace,
                        ),
                        //Tel
                        AppTextField(
                          label: "Phone number",
                          hint: "+216 99 696 969",
                          borderRadius: 0,
                          inputType: TextInputType.phone,
                          iconData: Icons.phone,
                          editingController: controller.phoneNumberController,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "phone number is required";
                            }
                            return null;
                          },
                        ),
                        SizedBox(
                          height: ySpace,
                        ),
                        //Email
                        AppTextField(
                          label: "Email",
                          hint: "email@email.com",
                          iconData: Icons.email,
                          inputType: TextInputType.emailAddress,
                          borderRadius: 0,
                          editingController: controller.emailController,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "email is required";
                            }
                            return null;
                          },
                        ),
                        SizedBox(
                          height: ySpace,
                        ),
                        //Password
                        AppTextField(
                          label: "Password",
                          hint: "Azerty.123",
                          iconData: Icons.password,
                          inputType: TextInputType.visiblePassword,
                          isPassword: true,
                          borderRadius: 0,
                          editingController: controller.passwordController,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "password is required";
                            }
                            return null;
                          },
                        ),
                        SizedBox(
                          height: ySpace,
                        ),
                        //Date picker
                        DatePicker(
                          borderRadius: 0,
                          bgColor: AppColors.lightGray.withOpacity(0.2),
                        ),
                        SizedBox(
                          height: ySpace,
                        ), //Blood picker
                        //List picker
                        DropDownButton(
                          borderRadius: 0,
                          bgColor: AppColors.lightGray.withOpacity(0.2),
                        ),
                        const SizedBox(
                          height: 22,
                        ),
                        //Button
                        PrimaryButton(
                          title: "Soumettre",
                          processing: controller.inProgress,
                          borderRadius: 3,
                          onClick: () {
                            if (controller.keyForm.currentState!.validate()) {
                              controller.updateProfileSettings();
                            }
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
