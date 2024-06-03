import 'package:flutter/material.dart';
import 'dept/cardiology.dart';
import 'dept/dentistry.dart';
import 'dept/gynae.dart';
import 'dept/nephrology.dart';
import 'dept/neurology.dart';
import 'dept/orthopedic.dart';

class find_doctor_department extends StatelessWidget {
  const find_doctor_department({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Find Doctor by Department",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 20),
        Wrap(
          spacing: 15,
          runSpacing: 30,
          children: [
            cardiology(),
            dentistry(),
            gynae(),
            nephrology(),
            neurology(),
            orthopedic(),
          ],
        )
      ],
    );
  }
}
