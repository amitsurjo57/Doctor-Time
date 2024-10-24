import 'package:flutter/material.dart';
import '../../../Department/Cardiology/cardiology_department.dart';

class cardiology extends StatelessWidget {
  const cardiology({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => const cardiology_department()));
      },
      child: Column(
        children: [
          Container(
            width: 90,
            height: 90,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(width: 1, color: Colors.red),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(
                child: SizedBox(
                    height: 70,
                    width: 70,
                    child: Image.asset(
                        "assets/images/Department/cardiology.jpg"))),
          ),
          const SizedBox(height: 10),
          const Text("Cardiology",
              style: TextStyle(fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
