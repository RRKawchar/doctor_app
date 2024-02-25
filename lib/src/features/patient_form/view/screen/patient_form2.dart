import 'package:doctor_app/src/core/extensions/build_context_extensions.dart';
import 'package:doctor_app/src/core/utils/app_colors.dart';
import 'package:doctor_app/src/core/widgets/k_button.dart';
import 'package:doctor_app/src/core/widgets/k_textformfiled.dart';
import 'package:doctor_app/src/features/patient_form/view/widgets/form_top_section.dart';
import 'package:flutter/material.dart';

class PatientForm2 extends StatefulWidget {
  const PatientForm2({super.key});

  @override
  State<PatientForm2> createState() => _PatientForm2State();
}

class _PatientForm2State extends State<PatientForm2> {
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Container(
        height: context.screenHeight,
        width: context.screenWidth,
        color: kPrimaryColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const FormTopSection(),
            const SizedBox(height: 25),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: kWhite,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        KTextFormField(
                          title: "Blood Pressure",
                          controller: controller,
                          textInputAction: TextInputAction.next,
                          textInputType: TextInputType.name,
                        ),
                        const SizedBox(height: 10),
                        KTextFormField(
                          title: "Temperature",
                          controller: controller,
                          textInputAction: TextInputAction.next,
                          textInputType: TextInputType.name,
                        ),
                        const SizedBox(height: 10),
                        KTextFormField(
                          title: "Drug History(DH)",
                          controller: controller,
                          textInputAction: TextInputAction.next,
                          textInputType: TextInputType.name,
                        ),
                        const SizedBox(height: 10),
                        KTextFormField(
                          title: "Hypertension(HTN)",
                          controller: controller,
                          textInputAction: TextInputAction.next,
                          textInputType: TextInputType.name,
                        ),
                        const SizedBox(height: 10),
                        KTextFormField(
                          title: "On Examination(OE)",
                          controller: controller,
                          textInputAction: TextInputAction.next,
                          textInputType: TextInputType.name,
                        ),
                        const SizedBox(height: 10),
                        KTextFormField(
                          title: "USG",
                          controller: controller,
                          textInputAction: TextInputAction.next,
                          textInputType: TextInputType.name,
                        ),
                        const SizedBox(height: 40),
                        KButton(onTap: () {}, child: const Text("Next"))
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
