import 'package:flutter/material.dart';

import '../../../Department/Neurology/neurology_department.dart';

class neurology extends StatelessWidget {
  const neurology({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => const neurology_department(),));
      },
      child: Column(
        children: [
          Container(
            width: 90,
            height: 90,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(width: 1, color: Colors.pink),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(
                child: SizedBox(
                    height: 70,
                    width: 70,
                    child: Image.asset(
                        "assets/images/Department/neurology.png"))),
          ),
          const SizedBox(height: 10),
          const Text("Neurology",
              style: TextStyle(fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
