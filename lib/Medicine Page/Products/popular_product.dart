import '../../Custom Widget/medicine page widgets/produc_price_calculate.dart';
import '../../Custom Widget/medicine page widgets/medicine_product_widget.dart';
import 'package:flutter/material.dart';

class popular_products extends StatelessWidget {
  const popular_products({super.key});

  @override
  Widget build(BuildContext context) {
    List popular_product_info = [
      [
        "Napa 500 mg",
        "assets/images/Medicine/Popular Products/napa.png",
        1.12,
        "Tablet",
        1001,
      ],
      [
        "Sergel 20 mg",
        "assets/images/Medicine/Popular Products/sergel.png",
        8.51,
        "Capsule",
        1002,
      ],
      [
        "Ceevit 250 mg",
        "assets/images/Medicine/Popular Products/ceevit.png",
        1.77,
        "Tablet",
        1003,
      ],
      [
        "Monas 10 mg",
        "assets/images/Medicine/Popular Products/monas.png",
        16.27,
        "Tablet",
        1004,
      ],
      [
        "Bicozin",
        "assets/images/Medicine/Popular Products/bicozin.png",
        83.7,
        "Tablet Pot",
        1005,
      ],
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Popular Products",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: 180,
          child: ListView.separated(
            padding: const EdgeInsets.only(right: 20),
            itemCount: popular_product_info.length,
            clipBehavior: Clip.none,
            separatorBuilder: (context, index) => const SizedBox(width: 20),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => ProductMedicine(
              product_image_path: popular_product_info[index][1],
              product_name: popular_product_info[index][0],
              product_price: popular_product_info[index][2],
              product_type: popular_product_info[index][3],
              onTap: () {
                showModalBottomSheet(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(25),
                    ),
                  ),
                  context: context,
                  builder: (context) => ProductPrice(
                    product_piece: popular_product_info[index][2],
                    product_image_path: popular_product_info[index][1],
                    product_name: popular_product_info[index][0],
                    product_type: popular_product_info[index][3],
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
