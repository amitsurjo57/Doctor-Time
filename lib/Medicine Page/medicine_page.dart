import 'package:flutter/material.dart';
import 'Products/covid_products.dart';
import 'Products/device_equipment.dart';
import 'Products/diabetes_products.dart';
import 'Products/womens_care.dart';
import 'Products/popular_product.dart';
import 'search_bar.dart';
import 'Products/mens_products.dart';

class MedicinePage extends StatelessWidget {
  MedicinePage({super.key});

  final List page = [
    const popular_products(),
    const covid_products(),
    const diabetes_products(),
    const mens_products(),
    const womens_care(),
    const device_equipment(),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const search_bar(),
        Expanded(
          child: ListView.separated(
            padding: const EdgeInsets.only(
              top: 30,
              bottom: 30,
              left: 30,
            ),
            itemCount: page.length,
            separatorBuilder: (context, index) => const SizedBox(height: 30),
            itemBuilder: (context, index) => page[index],
          ),
        )
      ],
    );
  }
}

