import 'package:get/get.dart';

class ConfirmRegistrationController extends GetxController {
  late String nama;
  late String email;
  late String gender;
  late String github;

  @override
  void onInit() {
    super.onInit();
    final arguments = Get.arguments as Map<String, dynamic>? ?? {};
    nama = arguments['nama'] ?? '';
    email = arguments['gmail'] ?? '';
    gender = arguments['gender'] ?? '';
    github = arguments['github'] ?? '';
  }
}