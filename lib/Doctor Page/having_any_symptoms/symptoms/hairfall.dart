import 'package:flutter/material.dart';

class hairfall extends StatelessWidget {
  const hairfall({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        //Navigator.push(context, MaterialPageRoute(builder: (context) => const cardiology_department()));
      },
      child: Column(
        children: [
          Container(
            width: 90,
            height: 70,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/symptoms images/hair.jpeg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            "Hairfall",
            style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
