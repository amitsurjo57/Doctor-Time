import 'package:flutter/material.dart';
import 'package:doctor_appoinment/Doctor Page/having_any_symptoms/symptom_related_doctor/pregnancy_problem.dart';
class pregnancy extends StatelessWidget {
  const pregnancy({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => const pregnancy_problem()));
      },
      child: Column(
        children: [
          Container(
            width: 90,
            height: 70,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/symptoms images/pregnancy.jpeg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            "Pregnancy",
            style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
          ),
          const Text(
            "Problem",
            style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
          ),

        ],
      ),
    );
  }
}
