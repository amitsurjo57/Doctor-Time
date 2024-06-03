import 'package:flutter/material.dart';

import '../../../Department/Orthopedics/orthopedics_department.dart';

class orthopedic extends StatelessWidget {
  const orthopedic({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => const orthopedics_department(),));
      },
      child: Column(
        children: [
          Container(
            width: 90,
            height: 90,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(width: 1, color: Colors.black),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(
                child: SizedBox(
                    height: 70,
                    width: 70,
                    child: Image.asset(
                        "assets/images/Department/orthopedics.png"))),
          ),
          const SizedBox(height: 10),
          const Text("Orthopedic",
              style: TextStyle(fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
