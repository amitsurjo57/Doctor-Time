import 'package:flutter/material.dart';
import '../../Custom Widget/medicine page widgets/medicine_product_widget.dart';
import '../../Custom Widget/medicine page widgets/produc_price_calculate.dart';

class diabetes_products extends StatelessWidget {
  const diabetes_products({super.key});

  @override
  Widget build(BuildContext context) {
    List diabetes_product_info = [
      [
        "Glucose Test Strips",
        "assets/images/Medicine/Diabetes/Blood Glucose Text Strips.png",
        400.00,
        "Strips"
      ],
      [
        "Glucose Monitoring System",
        "assets/images/Medicine/Diabetes/Glucose Monitoring System.png",
        2150.00,
        "Device",
      ],
      [
        "Blood Lancets",
        "assets/images/Medicine/Diabetes/Blood Lancets.png",
        100.00,
        "Lancet",
      ],
      [
        "Ansupen Twist",
        "assets/images/Medicine/Diabetes/Ansupen Twist.png",
        675.5,
        "Insulin Pen",
      ],
      [
        "Zerocal",
        "assets/images/Medicine/Diabetes/ZeroCal.png",
        7.00,
        "Tablet",
      ],
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Diabetes Care",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: 180,
          child: ListView.separated(
            padding: const EdgeInsets.only(right: 20),
            itemCount: diabetes_product_info.length,
            clipBehavior: Clip.none,
            separatorBuilder: (context, index) => const SizedBox(width: 20),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => ProductMedicine(
              product_image_path: diabetes_product_info[index][1],
              product_name: diabetes_product_info[index][0],
              product_price: diabetes_product_info[index][2],
              product_type: diabetes_product_info[index][3],
              onTap: () {
                showModalBottomSheet(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(25),
                    ),
                  ),
                  context: context,
                  builder: (context) => ProductPrice(
                    product_piece: diabetes_product_info[index][2],
                    product_image_path: diabetes_product_info[index][1],
                    product_name: diabetes_product_info[index][0],
                    product_type: diabetes_product_info[index][3],
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
