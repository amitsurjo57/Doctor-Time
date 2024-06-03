import 'package:flutter/material.dart';


import 'package:doctor_appoinment/Department/dermatology/shafkat_hasan.dart';
import 'package:doctor_appoinment/Department/dermatology/masrun_mostofa_chowdhury.dart';
import 'package:doctor_appoinment/Department/dermatology/muhammed_ashraful.dart';
import '../../../Custom Widget/custom_search_bar.dart';
class sexology extends StatelessWidget {
  const sexology({super.key});

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
                  shafkat_hasan(),
                  SizedBox(height: 25),
                  masrun_mostofa_chowdhury(),
                  SizedBox(height: 25),
                  muhammed_ashraful(),
                  SizedBox(height: 25),
                ],
              )
          ),
        ],
      ),
    );
  }
}
