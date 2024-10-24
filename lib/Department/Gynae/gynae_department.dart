import 'package:flutter/material.dart';
import '../../Custom Widget/custom_search_bar.dart';
import 'rezowana_afrin.dart';
import 'jasmin_ara_zaman.dart';
import 'sabrin_mursal.dart';


class gynae_department extends StatelessWidget {
  const gynae_department({super.key});

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
                  rezowana_afrin(),
                  SizedBox(height: 25),
                  jasmin_ara_zaman(),
                  SizedBox(height: 25),
                  sabrin_mursal(),
                  SizedBox(height: 25),
                ],
              )
          ),
        ],
      ),
    );
  }
}
