import 'package:doctor_appoinment/Doctor%20Page/popular_specialist.dart';
import 'package:flutter/material.dart';
import '../Custom Widget/custom_search_bar.dart';
import 'find_doctor_by_name/find_doctor_department.dart';
import 'having_any_symptoms/having_any_symptoms.dart';

class DoctorPage extends StatelessWidget {
  DoctorPage({super.key});

  final List page = [
    const popular_specialist(),
    const find_doctor_department(),
    const having_any_symptoms(),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const CustomSearchBar(),
        Expanded(
          child: ListView.separated(
            padding: const EdgeInsets.all(30),
            itemCount: page.length,
            separatorBuilder: (context, index) => const Divider(color: Colors.black12, height: 30, thickness: 2),
            itemBuilder: (context, index) => page[index],
          ),
        ),
      ],
    );
  }
}
