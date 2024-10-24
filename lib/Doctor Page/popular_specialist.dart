import 'package:doctor_appoinment/Department/Cardiology/md_sazzad_hosen_romel.dart';
import 'package:doctor_appoinment/Department/Dentistry/marzia_rahman.dart';
import 'package:doctor_appoinment/Department/Gynae/rezowana_afrin.dart';
import 'package:doctor_appoinment/Department/Nephrology/ahsan_ullah.dart';
import 'package:doctor_appoinment/Department/Neurology/alamgir_hossain.dart';
import 'package:doctor_appoinment/Department/Orthopedics/maria_akter.dart';
import 'package:flutter/material.dart';

class popular_specialist extends StatelessWidget {
  const popular_specialist({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Popular Specialist",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        SizedBox(height: 20),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          clipBehavior: Clip.none,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              md_sazzad_hosen_romel(),
              SizedBox(width: 20),
              marzia_rahman(),
              SizedBox(width: 20),
              alamgir_hossain(),
              SizedBox(width: 20),
              rezowana_afrin(),
              SizedBox(width: 20),
              ahsan_ullah(),
              SizedBox(width: 20),
              maria_akter(),
            ],
          ),
        ),
      ],
    );
  }
}
