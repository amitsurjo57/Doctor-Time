import 'package:doctor_appoinment/Department/Neurology/alamgir_hossain.dart';
import 'package:doctor_appoinment/Department/Neurology/shafayet_hossain.dart';
import 'package:flutter/material.dart';
import '../../Custom Widget/custom_search_bar.dart';
import 'parvez_ahmed.dart';
class neurology_department extends StatelessWidget {
  const neurology_department({super.key});

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
                  parvez_ahmed(),
                  SizedBox(height: 25),
                  shafayet_hossain(),
                  SizedBox(height: 25),
                  alamgir_hossain(),
                  SizedBox(height: 25),
                ],
              )
          ),
        ],
      ),
    );
  }
}
