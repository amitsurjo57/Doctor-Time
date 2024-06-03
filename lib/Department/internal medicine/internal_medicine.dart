import 'package:flutter/material.dart';
import '../../Custom Widget/custom_search_bar.dart';
import 'shafwanur_rahman.dart';
import 'raihan_ahmed.dart';
import 'khadiza_tasnim.dart';

class internal_medicine extends StatelessWidget {
  const internal_medicine({super.key});

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
                  shafwanur_rahman(),
                  SizedBox(height: 25),
                  raihan_ahmed(),
                  SizedBox(height: 25),
                  khadiza_tasnim(),
                  SizedBox(height: 25),
                ],
              )
          ),
        ],
      ),
    );
  }
}
