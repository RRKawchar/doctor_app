import 'package:doctor_app/src/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class FormTopSection extends StatelessWidget {
  const FormTopSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 88),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Patient Admission Form",
            style: TextStyle(color: kWhite),
          ),
          Text(
            "Fill out the form",
            style: TextStyle(
              fontSize: 12,
              color: kWhite,
              fontWeight: FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }
}
