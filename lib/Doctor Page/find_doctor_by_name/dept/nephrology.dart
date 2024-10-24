import 'package:flutter/material.dart';

import '../../../Department/Nephrology/nephrology_department.dart';

class nephrology extends StatelessWidget {
  const nephrology({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => const nephrology_department(),));
      },
      child: Column(
        children: [
          Container(
            width: 90,
            height: 90,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(width: 1, color: Colors.blueGrey),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(
                child: SizedBox(
                  width: 77,
                  height: 77,
                  child: Image.asset(
                      "assets/images/Department/nephrology.jpg"),
                )),
          ),
          const SizedBox(height: 10),
          const Text("Nephrology",
              style: TextStyle(fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
