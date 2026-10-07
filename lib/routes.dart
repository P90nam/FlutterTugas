import 'package:get/get.dart';
import 'package:flutter_application_1/pages/list_produk_page.dart';
import 'pages/confirm_registration_page.dart';
import 'pages/registration_page.dart';

class Routes {
  static const String registration = '/registration';
  static const String confirmRegistration = '/confirmRegistration';
  static const String listProduk = '/listProduk';

  static final List<GetPage> myPages = [
    GetPage(name: registration, page: () => const RegistrationPage()),
    GetPage(name: confirmRegistration, page: () => const ConfirmRegistrationPage()),
    GetPage(name: listProduk, page: () => ListProdukPage()),
  ];
}