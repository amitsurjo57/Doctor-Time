import 'package:flutter/material.dart';

import '../../Custom Widget/custom_search_bar.dart';
import 'repon_saha.dart';
import 'anisul_hoque.dart';
import 'ahsan_ullah.dart';

class nephrology_department extends StatelessWidget {
  const nephrology_department({super.key});

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
                  repon_saha(),
                  SizedBox(height: 25),
                  anisul_hoque(),
                  SizedBox(height: 25),
                  ahsan_ullah(),
                  SizedBox(height: 25),
                ],
              )
          ),
        ],
      ),
    );
  }
}
