import 'package:flutter/material.dart';
import '../../../Department/Dentistry/dentistry_department.dart';

class dentistry extends StatelessWidget {
  const dentistry({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => const dentistry_department(),));
      },
      child: Column(
        children: [
          Container(
            width: 90,
            height: 90,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(width: 1, color: Colors.cyan),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(
                child: SizedBox(
                  width: 77,
                  height: 77,
                  child: Image.asset(
                      "assets/images/Department/dentistry.jpg"),
                )),
          ),
          const SizedBox(height: 10),
          const Text("Dentistry",
              style: TextStyle(fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
