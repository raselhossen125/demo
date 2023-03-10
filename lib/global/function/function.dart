import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// ############################# SnackBar Start #############################

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

/// ############################# SnackBar End #############################

/// ############################# Transalate Start #############################

dynamic localizationCheckForNumber(dynamic data) {
  if (data == null) return null;
  if (Get.locale.toString() == const Locale('bn_BD').toString()) {
    if (data.toString().contains('.00')) {
      return banNumber(data);
    } else if (data.toString().contains('.0')) {
      data = data.toString().replaceAll('.0', '.00');
      return banNumber(data);
    } else {
      return banNumber(data);
    }
  } else {
    return data;
  }
}

dynamic banNumber(String text) {
  for (int i = 0; i < text.length; i++) {
    final newT = numberMultiLan(text[i]);
    text = text.replaceAll(text[i], newT);
  }
  return text;
}

dynamic numberMultiLan(String number) {
  String newNumber;
  switch (number) {
    case '1':
      newNumber = '১';
      break;

    case '2':
      newNumber = '২';
      break;

    case '3':
      newNumber = '৩';
      break;

    case '4':
      newNumber = '৪';
      break;

    case '5':
      newNumber = '৫';
      break;

    case '6':
      newNumber = '৬';
      break;

    case '7':
      newNumber = '৭';
      break;

    case '8':
      newNumber = '৮';
      break;

    case '9':
      newNumber = '৯';
      break;

    case '0':
      newNumber = '০';
      break;

    default:
      newNumber = number;
      break;
  }
  return newNumber;
}

/// ############################# Transalate End #############################
/// ############################# Next Focus End #############################

void nextFocus({
  required BuildContext context,
  required FocusNode nextFocusNode,
}) {
  FocusScope.of(context).requestFocus(nextFocusNode);
}

/// ############################# Next Focus End #############################

/// ############################# List Start #############################

V? getValueFromListOfMap<K, V>(
    {required K, required List<Map<K, V>> dataList}) {
  dynamic reslt;
  for (var mapItem in dataList) {
    mapItem.forEach((key, value) {
      if (K == key) {
        reslt = value;
      }
    });
  }
  return reslt;
}

List<dynamic> getValueListFromListOfMap<K, V>(
    {required List<Map<K, V>> dataList, K}) {
  List<dynamic> result = [];
  for (var map in dataList) {
    map.forEach((key, value) {
      if (K == key) {
        result.add(value);
      }
    });
  }
  return result;
}

/// ############################# List End #############################