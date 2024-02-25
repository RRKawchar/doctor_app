import 'package:doctor_app/src/core/routes/app_routes.dart';
import 'package:doctor_app/src/core/widgets/k_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeButtonWidget extends StatelessWidget {
  const HomeButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 200),
      child: KButton(
        onTap: () {
          Get.toNamed(AppRoutes.patientForm1);
        },
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.add),
            Text("Add Patient"),
          ],
        ),
      ),
    );
  }
}
