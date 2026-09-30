import 'package:get/get.dart';

import 'pages/confirm_registration_page.dart';
import 'pages/registration_page.dart';

class Routes {
  static const String registration = '/registration';
  static const String confirmRegistration = '/confirmRegistration';

  static final List<GetPage> myPages = [
    GetPage(name: registration, page: () => const RegistrationPage()),
    GetPage(name: confirmRegistration, page: () => const ConfirmRegistrationPage()),
  ];
}