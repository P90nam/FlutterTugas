import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/routes.dart';

class RegistrationController extends GetxController {
  final namaController = TextEditingController();
  final gmailController = TextEditingController();
  final genderController = TextEditingController();
  final githubController = TextEditingController();


  void sendData() {
    Get.toNamed(
      Routes.confirmRegistration,
      arguments: {
        'nama': namaController.text,
        'gmail': gmailController.text,
        'gender': genderController.text,
        'github': githubController.text,
      },
    );
  }
  @override
  void onClose() {
    namaController.dispose();
    gmailController.dispose();
    genderController.dispose();
    githubController.dispose();
    super.onClose();
  }
}
