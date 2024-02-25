import 'package:doctor_app/src/features/home/view/screen/home_screen.dart';
import 'package:doctor_app/src/features/patient_details/view/details_screen.dart';
import 'package:doctor_app/src/features/patient_form/view/screen/patient_form1.dart';
import 'package:doctor_app/src/features/patient_form/view/screen/patient_form2.dart';
import 'package:get/get.dart';

class AppRoutes {
  static String home = '/';
  static String patientDetailsScreen = '/patient_details_screen';
  static String patientForm1 = '/patient_form1';
  static String patientForm2 = '/patient_form2';

  static final routes = [
    GetPage(
      name: AppRoutes.home,
      page: () => const HomeScreen(),
    ),
    GetPage(
      name: AppRoutes.patientForm1,
      page: () => const PatientForm1(),
    ),
    GetPage(
      name: AppRoutes.patientDetailsScreen,
      page: () => const PatientDetailsScreen(),
    ),
    GetPage(
      name: AppRoutes.patientForm2,
      page: () => const PatientForm2(),
    ),
  ];
}
