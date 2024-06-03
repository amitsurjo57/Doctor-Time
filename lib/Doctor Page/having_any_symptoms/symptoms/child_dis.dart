import 'package:flutter/material.dart';
import 'package:doctor_appoinment/Doctor Page/having_any_symptoms/symptom_related_doctor/child_diseases_problem.dart';

class child_dis extends StatelessWidget {
  const child_dis({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const child_diseases_problem()));
      },
      child: Column(
        children: [
          Container(
            width: 90,
            height: 70,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/symptoms images/child.jpeg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            "Child Diseases",
            style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
