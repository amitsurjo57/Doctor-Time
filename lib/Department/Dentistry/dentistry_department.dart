import 'package:doctor_appoinment/Department/Dentistry/mushavvir_alam.dart';
import 'package:flutter/material.dart';
import '../../Custom Widget/custom_search_bar.dart';
import 'marzia_rahman.dart';
import 'rahat_rahman.dart';


class dentistry_department extends StatelessWidget {
  const dentistry_department({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const CustomSearchBar(),
          Expanded(
              child: ListView(
                padding: const EdgeInsets.all(30),
                children: const [
                  marzia_rahman(),
                  SizedBox(height: 25),
                  rahat_rahman(),
                  SizedBox(height: 25),
                  mushavvir_alam(),
                  SizedBox(height: 25),
                ],
              )
          ),
        ],
      ),
    );
  }
}
