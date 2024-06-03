import 'package:flutter/material.dart';

import '../../Custom Widget/medicine page widgets/medicine_product_widget.dart';
import '../../Custom Widget/medicine page widgets/produc_price_calculate.dart';

class mens_products extends StatelessWidget {
  const mens_products({super.key});

  @override
  Widget build(BuildContext context) {
    List mens_product_info = [
      [
        "AXE Body Perfume",
        "assets/images/Medicine/Men's Products/axe.png",
        380.00,
        "Spray"
      ],
      [
        "Impact Body Spary",
        "assets/images/Medicine/Men's Products/impact.png",
        220.00,
        "Spray",
      ],
      [
        "Kool Shaving Foam",
        "assets/images/Medicine/Men's Products/kool_foam.png",
        300.00,
        "Shaving Foam",
      ],
      [
        "Kool After Shave Lotion",
        "assets/images/Medicine/Men's Products/kool_lotion.png",
        150.00,
        "Lotion",
      ],
      [
        "Nivea Men Face Wash",
        "assets/images/Medicine/Men's Products/nivea.png",
        500.00,
        "Face Wash",
      ],
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Men's Products",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: 180,
          child: ListView.separated(
            padding: const EdgeInsets.only(right: 20),
            itemCount: mens_product_info.length,
            clipBehavior: Clip.none,
            separatorBuilder: (context, index) => const SizedBox(width: 20),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => ProductMedicine(
              product_image_path: mens_product_info[index][1],
              product_name: mens_product_info[index][0],
              product_price: mens_product_info[index][2],
              product_type: mens_product_info[index][3],
              onTap: (){
                showModalBottomSheet(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(25),
                    ),
                  ),
                  context: context,
                  builder: (context) => ProductPrice(
                    product_piece: mens_product_info[index][2],
                    product_image_path: mens_product_info[index][1],
                    product_name: mens_product_info[index][0],
                    product_type: mens_product_info[index][3],
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
