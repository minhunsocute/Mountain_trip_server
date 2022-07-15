import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:get/get.dart';

import '../misc/colors.dart';

pickImage(ImageSource source) async {
  final ImagePicker _imagePicker = ImagePicker();
  XFile? _file = await _imagePicker.pickImage(source: source);
  if (_file != null) {
    return await _file.readAsBytes();
  }
  print('No image selected');
}

void SnackBarError(String msg) {
  Get.snackbar(
    "Error",
    msg,
    duration: Duration(seconds: 2),
    backgroundColor: AppColors.mainColor,
  );
}

void SnackBarNoti(String title, String msg) {
  Get.snackbar(
    title,
    msg,
    duration: Duration(seconds: 2),
    backgroundColor: AppColors.mainColor,
  );
}

Future<String> convertImageToString(File filedata) async {
  List<int> imageBytes = await filedata.readAsBytes();
  print(imageBytes);
  String base64Image = base64Encode(imageBytes);
  return base64Image;
}
