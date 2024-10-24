class Medicine {
  final String product_name;
  final String product_image_path;
  final dynamic product_price;
  final String product_type;

  Medicine({
    required this.product_name,
    required this.product_image_path,
    required this.product_price,
    required this.product_type,
  });
}

final allMedicine = [
  Medicine(
    product_name: "Napa 500 mg",
    product_image_path: "assets/images/Medicine/Popular Products/napa.png",
    product_price: 1.12,
    product_type: "Tablet",
  ),
  Medicine(
    product_name: "Hyginex",
    product_image_path: "assets/images/Medicine/Covid Essential/hyginex.png",
    product_price: 100.00,
    product_type: "Spray",
  ),
  Medicine(
    product_name: "Glucose Test Strips",
    product_image_path:
        "assets/images/Medicine/Diabetes/Blood Glucose Text Strips.png",
    product_price: 400.00,
    product_type: "Strips",
  ),
  Medicine(
    product_name: "AXE Body Perfume",
    product_image_path: "assets/images/Medicine/Men's Products/axe.png",
    product_price: 380.00,
    product_type: "Spray",
  ),
  Medicine(
    product_name: "Femicon 0.3 mg+0.03 mg+75 mg",
    product_image_path: "assets/images/Medicine/Womens Care/femicon.png",
    product_price: 40.00,
    product_type: "Tablet",
  ),
  Medicine(
    product_name: "Intex Air Pump Mattress",
    product_image_path:
        "assets/images/Medicine/Device Equipment/air_pump_mattress.png",
    product_price: 3800.00,
    product_type: "Fitness Equipment",
  ),
];
