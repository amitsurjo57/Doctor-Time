import 'package:flutter/material.dart';
import 'package:doctor_appoinment/Doctor Page/having_any_symptoms/symptom_related_doctor/period_problem.dart';
class period extends StatelessWidget {
  const period({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => const period_problem()));
      },
      child: Column(
        children: [
          Container(
            width: 90,
            height: 70,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/symptoms images/period.jpeg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            "Period Problems",
            style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
