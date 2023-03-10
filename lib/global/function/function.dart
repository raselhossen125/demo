import 'package:flutter/material.dart';
import 'package:get/get.dart';

void showGetSnackBar({
  required String title,
  required String message,
  Color? bgColor,
  Color? textColor,
  int? duration,
  double? borderRdius,
  SnackPosition? snackPosition,
}) {
  Get.snackbar(
    title,
    message,
    backgroundColor: bgColor ?? Colors.red,
    duration: Duration(seconds: duration ?? 3),
    borderRadius: borderRdius,
    colorText: textColor ?? Colors.black,
    snackPosition: snackPosition ?? SnackPosition.TOP,
  );
}

void showSnackBar({
  required BuildContext context,
  required String msg,
  TextStyle? style,
  Color? bgColor,
  Color? lableTextColor,
  int? duration,
  String? label,
  VoidCallback? onTap,
}) =>
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          topLeft: Radius.circular(5),
          topRight: Radius.circular(5),
        )),
        content: Text(
          msg,
          style: style,
        ),
        backgroundColor: bgColor,
        duration: Duration(seconds: duration ?? 3),
        action: SnackBarAction(
          label: label ?? '',
          onPressed: onTap ?? () {},
          textColor: lableTextColor,
        ),
      ),
    );
