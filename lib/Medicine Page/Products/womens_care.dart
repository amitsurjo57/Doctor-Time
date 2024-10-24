import 'package:flutter/material.dart';

import '../../Custom Widget/medicine page widgets/medicine_product_widget.dart';
import '../../Custom Widget/medicine page widgets/produc_price_calculate.dart';

class womens_care extends StatelessWidget {
  const womens_care({super.key});

  @override
  Widget build(BuildContext context) {
    List womens_product_info = [
      [
        "Femicon 0.3 mg+0.03 mg+75 mg",
        "assets/images/Medicine/Womens Care/femicon.png",
        40.00,
        "Tablet"
      ],
      [
        "Femipill",
        "assets/images/Medicine/Womens Care/femipill.png",
        18.00,
        "Tablet",
      ],
      [
        "Freedom Sanitary Napkin",
        "assets/images/Medicine/Womens Care/freedom.png",
        185.00,
        "Sanitary Napkin",
      ],
      [
        "Joya Sanitary Napkin",
        "assets/images/Medicine/Womens Care/joya.png",
        20.00,
        "Lotion",
      ],
      [
        "Whisper Sanitary Napkin",
        "assets/images/Medicine/Womens Care/whisper.png",
        185.00,
        "Sanitary Napkin",
      ],
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Womens Care",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: 180,
          child: ListView.separated(
            padding: const EdgeInsets.only(right: 20),
            itemCount: womens_product_info.length,
            clipBehavior: Clip.none,
            separatorBuilder: (context, index) => const SizedBox(width: 20),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => ProductMedicine(
              product_image_path: womens_product_info[index][1],
              product_name: womens_product_info[index][0],
              product_price: womens_product_info[index][2],
              product_type: womens_product_info[index][3],
              onTap: (){
                showModalBottomSheet(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(25),
                    ),
                  ),
                  context: context,
                  builder: (context) => ProductPrice(
                    product_piece: womens_product_info[index][2],
                    product_image_path: womens_product_info[index][1],
                    product_name: womens_product_info[index][0],
                    product_type: womens_product_info[index][3],
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
