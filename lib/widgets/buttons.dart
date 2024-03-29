import 'package:flutter/material.dart';
import 'package:parking/style/colors.dart';
import 'package:parking/style/text.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton(
      {Key? key,
      required this.title,
      required this.onClick,
      this.processing = false,
      this.borderRadius})
      : super(key: key);
  final String title;
  final VoidCallback onClick;
  final bool processing;
  final double? borderRadius;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 56,
      child: Material(
        color: AppColors.secondaryColor,
        borderRadius: BorderRadius.circular(borderRadius ?? 20),
        child: InkWell(
          borderRadius: BorderRadius.circular(borderRadius ?? 20),
          splashColor: const Color.fromARGB(120, 255, 255, 255),
          onTap: onClick,
          child: processing == true
              ? const Center(
                  child: CircularProgressIndicator(
                    backgroundColor: Colors.white,
                    strokeWidth: 2,
                  ),
                )
              : Center(
                  child: Text(
                    title,
                    style: AppTextStyle.smallBoldWhiteText,
                  ),
                ),
        ),
      ),
    );
  }
}
