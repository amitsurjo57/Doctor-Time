import 'dart:io';

import 'package:doctor_appoinment/Database/cart_provider.dart';
import 'package:doctor_appoinment/Database/db_helper.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

import '../../Database/cart_model.dart';
import '../../Medicine Page/cart_screen.dart';

class ProductPrice extends StatefulWidget {
  final int? id;
  final int? product_id;
  final dynamic product_piece;
  final String product_image_path;
  final String product_name;
  final String product_type;
  final Function()? onCart;

  const ProductPrice({
    super.key,
    this.product_id,
    this.id,
    required this.product_piece,
    required this.product_image_path,
    required this.product_name,
    required this.product_type,
    this.onCart,
  });

  @override
  State<ProductPrice> createState() => ProductPriceState();
}

class ProductPriceState extends State<ProductPrice> {
  dynamic id;
  dynamic product_id;
  dynamic base_price;
  dynamic product_image_path;
  dynamic product_name;
  dynamic product_type;
  dynamic total_price;
  int piece = 1;

  @override
  void initState() {
    super.initState();
    id = widget.id;
    product_id = widget.product_id;
    base_price = widget.product_piece;
    product_image_path = widget.product_image_path;
    product_name = widget.product_name;
    product_type = widget.product_type;
    total_price = base_price;
  }

  DbHelper? dbhelper = DbHelper();

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<CartProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: SizedBox(
        height: 330,
        width: double.infinity,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
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
                  leading: Image.asset(product_image_path),
                  title: Text(
                    product_name,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    product_type,
                    style: const TextStyle(color: Colors.grey),
                  ),
                  trailing: Text(
                    "$base_price BDT /pc",
                    style: const TextStyle(fontSize: 15),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: IconButton(
                      onPressed: () {
                        setState(() {
                          if (piece == 1) {
                            Fluttertoast.showToast(
                              msg: "You have to buy at least one item",
                              backgroundColor: Colors.grey.shade600,
                              toastLength: Toast.LENGTH_SHORT,
                            );
                          } else {
                            piece--;
                            total_price -= base_price;
                          }
                        });
                      },
                      icon: const Icon(Icons.remove, color: Colors.white),
                    ),
                  ),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: "$piece",
                          style: const TextStyle(
                            fontSize: 25,
                            color: Colors.lightBlue,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        const TextSpan(
                          text: " /pc",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: IconButton(
                      onPressed: () {
                        setState(() {
                          piece++;
                          total_price += base_price;
                          Fluttertoast.cancel();
                        });
                      },
                      icon: const Icon(Icons.add, color: Colors.white),
                    ),
                  ),
                ],
              ),
              Text.rich(
                TextSpan(
                  children: [
                    const TextSpan(
                      text: "Total Price: ",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    TextSpan(
                      text: "${total_price.toStringAsFixed(2)} ",
                      style: const TextStyle(
                        fontSize: 25,
                        color: Colors.lightBlue,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    const TextSpan(
                      text: "BDT",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 300,
                child: ElevatedButton(
                  onPressed: () {
                    dbhelper!.insert(
                      Cart(
                        id: id,
                        product_id: product_id,
                        product_image_path: product_image_path,
                        product_name: product_name,
                        product_piece: piece,
                        product_type: product_type,
                        total_price: total_price,
                      ),
                    ).then((value) {
                      cart.addTotalPrice(total_price);
                      cart.addCounter();
                    },).onError((error, stackTrace){
                      stdout.write(error.toString());
                    });
                    Navigator.push(
                      context,
                      PageTransition(
                        child: CartScreen(piece: piece),
                        type: PageTransitionType.rightToLeft,
                        curve: Curves.easeInOut,
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                    elevation: 20,
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.shopping_cart),
                      SizedBox(width: 10),
                      Text("Add To Cart"),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
