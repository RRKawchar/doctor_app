import 'package:doctor_app/src/core/routes/app_routes.dart';
import 'package:doctor_app/src/features/home/model/fake_patent_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePatientListTile extends StatelessWidget {
  final FakePatentModel patientList;
  const HomePatientListTile({super.key, required this.patientList});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Get.toNamed(AppRoutes.patientDetailsScreen);
      },
      leading: CircleAvatar(
        radius: 25,
        child: Text(patientList.id.toString()),
      ),
      title: Text(
        patientList.name.toString(),
        style: const TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Text(
        patientList.phone.toString(),
        style: const TextStyle(
            fontWeight: FontWeight.normal, fontSize: 15),
      ),
    );
  }
}
