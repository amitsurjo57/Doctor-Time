import 'package:flutter/material.dart';

import '../../Custom Widget/custom_search_bar.dart';
import 'ismat_zerin.dart';
import 'nazmin_nahar.dart';
import 'anika_jahin.dart';

class nutrition_food extends StatelessWidget {
  const nutrition_food({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const CustomSearchBar(),
          Expanded(
              child: ListView(
                padding: const EdgeInsets.all(30),
                children: const [
                  ismat_zerin(),
                  SizedBox(height: 25),
                  nazmin_nahar(),
                  SizedBox(height: 25),
                  anika_jahin(),
                  SizedBox(height: 25),
                ],
              )
          ),
        ],
      ),
    );
  }
}
