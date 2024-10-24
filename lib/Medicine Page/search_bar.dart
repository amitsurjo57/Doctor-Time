import 'package:doctor_appoinment/Database/cart_provider.dart';
import 'package:doctor_appoinment/Medicine%20Page/Search%20Syatem/real_search_bar.dart';
import 'package:doctor_appoinment/Medicine%20Page/cart_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

class search_bar extends StatelessWidget {
  const search_bar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
                  textAlign: TextAlign.start,
                  readOnly: true,
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const MedicineSearchBar(),));
                  },
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
    );
  }
}
