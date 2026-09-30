import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../component/custom_button.dart';
import '../component/custom_textfield.dart';
import '../controller/registration_controller.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(RegistrationController());

    final fields = [
      MyTextfield(myHint: 'Nama', txtController: controller.namaController, radius: 12, icon: Icons.person),
      MyTextfield(myHint: 'Jenis Kelamin', txtController: controller.genderController, radius: 12, icon: Icons.person_outline),
      MyTextfield(myHint: 'Github', txtController: controller.githubController, radius: 12, icon: Icons.code),
      MyTextfield(myHint: 'Gmail', txtController: controller.gmailController, radius: 12, icon: Icons.email_outlined),
    ];

    return Scaffold(
      backgroundColor: const Color(0xFF0F0F0F),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 16),
              Row(
                children: const [
                  _YouTubeMark(),
                  SizedBox(width: 10),
                  Text(
                    'YouTube',
                    style: TextStyle(color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(height: 28),
              const Text(
                'Registration',
                style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.w700),
              ),
              const SizedBox(height: 22),
              ...fields.map((field) => Padding(
                    padding: const EdgeInsets.only(bottom: 14),
                    child: field,
                  )),
              const SizedBox(height: 10),
              SizedBox(
                width: double.infinity,
                child: CustomButton(
                  label: 'Submit',
                  onPressed: controller.sendData,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _YouTubeMark extends StatelessWidget {
  const _YouTubeMark();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Icon(Icons.play_arrow, color: Colors.white, size: 28),
    );
  }
}
