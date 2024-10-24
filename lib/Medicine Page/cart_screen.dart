import 'package:doctor_appoinment/Payment%20Gateway/bkash.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import '../Database/cart_model.dart';
import '../Database/cart_provider.dart';
import '../Database/db_helper.dart';

class CartScreen extends StatefulWidget {
  final int? piece;

  const CartScreen({super.key, this.piece});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  dynamic piece;
  dynamic total_amount;

  @override
  void initState() {
    super.initState();
    piece = widget.piece;
  }

  DbHelper? dbhelper = DbHelper();

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<CartProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cart List"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: FutureBuilder(
        future: cart.getData(),
        builder: (context, AsyncSnapshot<List<Cart>> snapshot) {
          if (snapshot.hasData) {
            return snapshot.data!.isEmpty
                ? const Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.emoji_emotions_outlined),
                        SizedBox(width: 20),
                        Text(
                          "Cart is Empty",
                          style: TextStyle(fontSize: 20),
                        ),
                        SizedBox(width: 20),
                        Icon(Icons.emoji_emotions_outlined),
                      ],
                    ),
                  )
                : Column(
                    children: [
                      Expanded(
                        child: ListView.separated(
                          padding: const EdgeInsets.only(
                            left: 10,
                            right: 10,
                            top: 20,
                            bottom: 20,
                          ),
                          separatorBuilder: (context, index) =>
                              const SizedBox(height: 30),
                          itemCount: snapshot.data!.length,
                          itemBuilder: (context, index) => Slidable(
                            endActionPane: ActionPane(
                              motion: const StretchMotion(),
                              children: [
                                SlidableAction(
                                  backgroundColor: Colors.red,
                                  icon: Icons.delete,
                                  label: "Delete",
                                  borderRadius: BorderRadius.circular(50),
                                  onPressed: (context) {
                                    dbhelper!.delete(snapshot.data![index].id!);
                                    cart.removeCounter();
                                    cart.removeTotalPrice(
                                      double.parse(
                                        snapshot.data![index].total_price
                                            .toString(),
                                      ),
                                    );
                                  },
                                ),
                              ],
                            ),
                            child: Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.white,
                                boxShadow: const [
                                  BoxShadow(
                                    blurRadius: 5,
                                    color: Colors.grey,
                                  ),
                                ],
                              ),
                              child: ListTile(
                                leading: Image.asset(snapshot
                                    .data![index].product_image_path
                                    .toString()),
                                title: Text(
                                  snapshot.data![index].product_name.toString(),
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold),
                                ),
                                subtitle: Text(
                                  snapshot.data![index].product_type.toString(),
                                  style: const TextStyle(color: Colors.grey),
                                ),
                                trailing: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Text("Total Price:"),
                                    Text(
                                      "${snapshot.data![index].total_price.toStringAsFixed(2)} BDT",
                                      style: const TextStyle(
                                          fontSize: 15,
                                          color: Colors.lightBlue),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            PageTransition(
                              child: Bkash(amount: total_amount),
                              type: PageTransitionType.rightToLeft,
                              curve: Curves.easeInOut,
                            ),
                          );
                        },
                        child: Container(
                          width: double.infinity,
                          height: 100,
                          color: Theme.of(context).colorScheme.inversePrimary,
                          child: Center(
                            child: Consumer<CartProvider>(
                              builder: (context, value, child) {
                                total_amount =
                                    value.getTotalPrice().toStringAsFixed(2);
                                double fontSize = 25;
                                return Text.rich(
                                  TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "Pay:  ",
                                        style: TextStyle(fontSize: fontSize),
                                      ),
                                      TextSpan(
                                        text: "$total_amount",
                                        style: TextStyle(
                                            fontSize: fontSize,
                                            fontWeight: FontWeight.bold,
                                            decoration:
                                                TextDecoration.underline),
                                      ),
                                      TextSpan(
                                        text: "  BDT",
                                        style: TextStyle(fontSize: fontSize),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                      )
                    ],
                  );
          }
          return const Text("");
        },
      ),
    );
  }
}
