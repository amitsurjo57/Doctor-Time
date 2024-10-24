import '../../Custom Widget/custom_search_bar.dart';
import 'bishojit_mondol.dart';
import 'md_rafiqul_islam.dart';
import 'md_sazzad_hosen_romel.dart';
import 'package:flutter/material.dart';

class cardiology_department extends StatelessWidget {
  const cardiology_department({super.key});

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
                  md_sazzad_hosen_romel(),
                  SizedBox(height: 25),
                  bishojit_mondol(),
                  SizedBox(height: 25),
                  md_rafiqul_islam(),
                  SizedBox(height: 25),
                ],
              )
          ),
        ],
      ),
    );
  }
}
