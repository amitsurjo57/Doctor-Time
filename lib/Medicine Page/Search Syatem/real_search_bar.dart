import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import '../../Custom Widget/medicine page widgets/produc_price_calculate.dart';
import '../../Database/cart_provider.dart';
import '../cart_screen.dart';
import 'medicine.dart';

class MedicineSearchBar extends StatefulWidget {
  const MedicineSearchBar({super.key});

  @override
  State<MedicineSearchBar> createState() => _MedicineSearchBarState();
}

class _MedicineSearchBarState extends State<MedicineSearchBar> {
  List<Medicine> medicines = allMedicine;

  var controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 30, right: 30, top: 50),
            height: 120,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Container(
                      width: 250,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.blue.shade50,
                          borderRadius: BorderRadius.circular(50),
                          boxShadow: const [
                            BoxShadow(
                              blurRadius: 10,
                              blurStyle: BlurStyle.solid,
                              color: Colors.black38,
                            )
                          ]),
                      child: TextField(
                        controller: controller,
                        textAlign: TextAlign.start,
                        onChanged: searchMedicine,
                        autofocus: true,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(Icons.search),
                          hintText: "Search Medicine",
                          alignLabelWithHint: true,
                          hintFadeDuration: Duration(milliseconds: 300),
                          contentPadding: EdgeInsets.only(left: 25, top: 10),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        PageTransition(
                          child: const CartScreen(),
                          type: PageTransitionType.rightToLeft,
                          curve: Curves.easeInOut,
                        ),
                      );
                    },
                    child: Badge(
                      smallSize: 15,
                      alignment: Alignment.topRight,
                      label: Consumer<CartProvider>(
                        builder: (context, value, child) {
                          return Text(value.getCounter().toString());
                        },
                      ),
                      backgroundColor: Colors.blue,
                      child: const Icon(Icons.shopping_cart, size: 35),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView.separated(
              padding: const EdgeInsets.only(left: 15,right: 15,top: 20,bottom: 20),
              separatorBuilder: (context, index) => const SizedBox(height: 30),
              itemCount: medicines.length,
              itemBuilder: (context, index) {
                final medicine = medicines[index];
                return Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 5,
                          color: Colors.grey,
                        ),
                      ]),
                  child: ListTile(
                    leading: Image.asset(medicine.product_image_path),
                    title: Text(
                      medicine.product_name,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      medicine.product_type,
                      style: const TextStyle(color: Colors.grey),
                    ),
                    trailing: Text(
                      "${medicine.product_price} BDT /pc",
                      style: const TextStyle(fontSize: 15),
                    ),
                    onTap: (){
                      showModalBottomSheet(
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(25),
                          ),
                        ),
                        context: context,
                        builder: (context) => ProductPrice(
                          product_piece: medicine.product_price,
                          product_image_path: medicine.product_image_path,
                          product_name: medicine.product_name,
                          product_type: medicine.product_type,
                        ),
                      );
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  void searchMedicine(String query) {
    final suggestions = allMedicine.where((medicine) {
      final product_name = medicine.product_name.toLowerCase();
      final input = query.toLowerCase();
      return product_name.contains(input);
    }).toList();

    setState(() {
      medicines = suggestions;
    });
  }
}
