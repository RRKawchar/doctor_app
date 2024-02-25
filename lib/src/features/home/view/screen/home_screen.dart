import 'package:doctor_app/src/core/extensions/build_context_extensions.dart';
import 'package:doctor_app/src/core/fake_data/fake_data.dart';
import 'package:doctor_app/src/core/utils/app_colors.dart';
import 'package:doctor_app/src/core/widgets/k_divider.dart';
import 'package:doctor_app/src/features/home/view/widgets/home_button_widget.dart';
import 'package:doctor_app/src/features/home/view/widgets/home_patient_listtile.dart';
import 'package:doctor_app/src/features/home/view/widgets/home_top_section.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final searchTextEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Container(
          height: context.screenHeight,
          width: 200,
          color: Colors.grey,
        ),
        key: _scaffoldKey,
        body: Container(
          height: context.screenHeight,
          width: context.screenWidth,
          color: kPrimaryColor,
          child: Column(
            children: [
              HomeTopSection(
                onTap: () {
                  _scaffoldKey.currentState?.openDrawer();
                },
                controller: searchTextEditingController,
              ),
              const SizedBox(height: 30),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: bgColor,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: ListView.separated(
                      itemCount: patientList.length,
                      itemBuilder: (context, index) {
                        return HomePatientListTile(
                          patientList: patientList[index],
                        );
                      },
                      separatorBuilder: (BuildContext context, int index) =>
                          const KDivider()),
                ),
              ),
            ],
          ),
        ),
        resizeToAvoidBottomInset: false,
        floatingActionButton: const HomeButtonWidget());
  }
}
