import 'package:doctor_app/src/core/widgets/k_textformfiled.dart';
import 'package:flutter/material.dart';

class HomeTopSection extends StatelessWidget {
  final VoidCallback onTap;
  final TextEditingController controller;
  const HomeTopSection(
      {super.key, required this.onTap, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 45, left: 20, right: 20),
      child: Column(
        children: [
          Row(
            children: [
              const Expanded(
                child: Text(
                  "Patients List",
                ),
              ),
              InkWell(
                onTap: onTap,
                child: const Icon(
                  Icons.dehaze_rounded,
                ),
              ),
            ],
          ),
          KTextFormField(
            hintText: "Find a Patient",
            controller: controller,
            filled: true,
            prefixIcon: const Icon(
              Icons.search,
              size: 25,
            ),
          ),
        ],
      ),
    );
  }
}
