import 'package:flutter/material.dart';

import '../../../Department/Gynae/gynae_department.dart';

class gynae extends StatelessWidget {
  const gynae({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => const gynae_department(),));
      },
      child: Column(
        children: [
          Container(
            width: 90,
            height: 90,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(width: 1, color: Colors.pinkAccent),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(
                child: SizedBox(
                    width: 70,
                    height: 70,
                    child: Image.asset(
                        "assets/images/Department/gynae.png"))),
          ),
          const SizedBox(height: 10),
          const Text("Gynae & Obs",
              style:
              TextStyle(fontSize: 13, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
