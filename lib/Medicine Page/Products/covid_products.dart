import '../../Custom Widget/medicine page widgets/produc_price_calculate.dart';
import '../../Custom Widget/medicine page widgets/medicine_product_widget.dart';
import 'package:flutter/material.dart';

class covid_products extends StatelessWidget {
  const covid_products({super.key});

  @override
  Widget build(BuildContext context) {
    List covid_product_info = [
      [
        "Hyginex",
        "assets/images/Medicine/Covid Essential/hyginex.png",
        100.00,
        "Spray"
      ],
      [
        "Sepnil Sanitizer 250 ml",
        "assets/images/Medicine/Covid Essential/Sepnil Sanitizer.png",
        130.00,
        "Hand Rub",
      ],
      [
        "Winsol 250 ml",
        "assets/images/Medicine/Covid Essential/winsol.png",
        140.00,
        "Hand Rub",
      ],
      [
        "Savlon Handwash\n200 ml",
        "assets/images/Medicine/Covid Essential/handwash.png",
        65.00,
        "Hand Rub",
      ],
      [
        "Face Mask",
        "assets/images/Medicine/Covid Essential/face mask.png",
        7.00,
        "Mask",
      ],
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Covid Essential",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: 180,
          child: ListView.separated(
            padding: const EdgeInsets.only(right: 20),
            itemCount: covid_product_info.length,
            clipBehavior: Clip.none,
            separatorBuilder: (context, index) => const SizedBox(width: 20),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => ProductMedicine(
              product_image_path: covid_product_info[index][1],
              product_name: covid_product_info[index][0],
              product_price: covid_product_info[index][2],
              product_type: covid_product_info[index][3],
              onTap: () {
                showModalBottomSheet(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(25),
                    ),
                  ),
                  context: context,
                  builder: (context) => ProductPrice(
                    product_piece: covid_product_info[index][2],
                    product_image_path: covid_product_info[index][1],
                    product_name: covid_product_info[index][0],
                    product_type: covid_product_info[index][3],
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
