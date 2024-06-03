import 'package:flutter/material.dart';
import '../../Custom Widget/custom_search_bar.dart';
import 'hannanur_rahman_jewel.dart';
import 'ripon_kumar_ghosh.dart';
import 'maria_akter.dart';

class orthopedics_department extends StatelessWidget {
  const orthopedics_department({super.key});

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
                  hannanur_rahman_jewel(),
                  SizedBox(height: 25),
                  ripon_kumar_ghosh(),
                  SizedBox(height: 25),
                  maria_akter(),
                  SizedBox(height: 25),
                ],
              )
          ),
        ],
      ),
    );
  }
}
