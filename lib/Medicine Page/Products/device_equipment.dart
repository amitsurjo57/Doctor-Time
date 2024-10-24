import 'package:flutter/material.dart';
import '../../Custom Widget/medicine page widgets/medicine_product_widget.dart';
import '../../Custom Widget/medicine page widgets/produc_price_calculate.dart';

class device_equipment extends StatelessWidget {
  const device_equipment({super.key});

  @override
  Widget build(BuildContext context) {
    List device_equipment_info = [
      [
        "Intex Air Pump Mattress",
        "assets/images/Medicine/Device Equipment/air_pump_mattress.png",
        3800.00,
        "Fitness Equipment"
      ],
      [
        "Vissco Ankle Blinder",
        "assets/images/Medicine/Device Equipment/ankle_binder.png",
        780.00,
        "Fitness Equipment",
      ],
      [
        "Vissco Cervical Collar",
        "assets/images/Medicine/Device Equipment/cervical_collar.png",
        560.00,
        "Surgical",
      ],
      [
        "Vissco Cot Finger",
        "assets/images/Medicine/Device Equipment/cot_finger.png",
        210.00,
        "Fitness Equipment",
      ],
      [
        "Camry Weight Scale",
        "assets/images/Medicine/Device Equipment/weight_scale.png",
        1200.00,
        "Device",
      ],
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Devices Equipment",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: 180,
          child: ListView.separated(
            padding: const EdgeInsets.only(right: 20),
            itemCount: device_equipment_info.length,
            clipBehavior: Clip.none,
            separatorBuilder: (context, index) => const SizedBox(width: 20),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => ProductMedicine(
              product_image_path: device_equipment_info[index][1],
              product_name: device_equipment_info[index][0],
              product_price: device_equipment_info[index][2],
              product_type: device_equipment_info[index][3],
              onTap: (){
                showModalBottomSheet(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(25),
                    ),
                  ),
                  context: context,
                  builder: (context) => ProductPrice(
                    product_piece: device_equipment_info[index][2],
                    product_image_path: device_equipment_info[index][1],
                    product_name: device_equipment_info[index][0],
                    product_type: device_equipment_info[index][3],
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
