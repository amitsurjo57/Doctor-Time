import 'package:flutter/material.dart';
import '../../Custom Widget/custom_search_bar.dart';
import 'mithun_sarkar.dart';
import 'tahmida_ferdousi.dart';
import 'waliur_rahman.dart';

class child_diseases extends StatelessWidget {
  const child_diseases({super.key});

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
                  mithun_sarkar(),
                  SizedBox(height: 25),
                  tahmida_ferdousi(),
                  SizedBox(height: 25),
                  waliur_rahman(),
                  SizedBox(height: 25),
                ],
              )
          ),
        ],
      ),
    );
  }
}
