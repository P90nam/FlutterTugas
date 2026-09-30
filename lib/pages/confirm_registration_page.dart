import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../component/custom_button.dart';
import '../component/custom_textdisplay.dart';
import '../controller/confirm_registration_controller.dart';

class ConfirmRegistrationPage extends StatelessWidget {
  const ConfirmRegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ConfirmRegistrationController());
    final data = [
      ('Nama', controller.nama),
      ('Email', controller.email),
      ('Jenis Kelamin', controller.gender),
      ('GitHub', controller.github),
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
                    'YouTube Style Confirm',
                    style: TextStyle(color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(height: 28),
              const Text(
                'Confirm Registration',
                style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.w700),
              ),
              const SizedBox(height: 22),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(18),
                decoration: BoxDecoration(
                  color: const Color(0xFF1E1E1E),
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: data.map((item) => Padding(
                        padding: const EdgeInsets.only(bottom: 12),
                        child: CustomTextdisplay(
                          text: '${item.$1}: ${item.$2}',
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      )).toList(),
                ),
              ),
              const SizedBox(height: 24),
              SizedBox(
                width: double.infinity,
                child: CustomButton(
                  label: 'Back',
                  onPressed: Get.back,
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
