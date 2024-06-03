import 'package:doctor_appoinment/Doctor%20Page/having_any_symptoms/symptoms/child_dis.dart';
import 'package:doctor_appoinment/Doctor%20Page/having_any_symptoms/symptoms/fever.dart';
import 'package:doctor_appoinment/Doctor%20Page/having_any_symptoms/symptoms/period.dart';
import 'package:doctor_appoinment/Doctor%20Page/having_any_symptoms/symptoms/pregnancy.dart';
import 'package:doctor_appoinment/Doctor%20Page/having_any_symptoms/symptoms/sexual.dart';
import 'package:doctor_appoinment/Doctor%20Page/having_any_symptoms/symptoms/weight.dart';
import 'package:flutter/material.dart';

class having_any_symptoms extends StatelessWidget {
  const having_any_symptoms({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Having any of these symptoms?",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 20),
        Wrap(
          spacing: 15,
          runSpacing: 30,
          children: [
            sexual(),
            period(),
            fever(),
            child_dis(),
            pregnancy(),
            weight(),
          ],
        ),
      ],
    );
  }
}
