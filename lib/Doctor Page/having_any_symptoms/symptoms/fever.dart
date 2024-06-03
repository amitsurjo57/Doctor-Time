import 'package:flutter/material.dart';
import 'package:doctor_appoinment/Doctor Page/having_any_symptoms/symptom_related_doctor/fever_cold.dart';
class fever extends StatelessWidget {
  const fever({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => const fever_cold()));
      },
      child: Column(
        children: [
          Container(
            width: 90,
            height: 70,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/symptoms images/fever.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            "Fever, Cold",
            style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
