import 'package:flutter_bkash/flutter_bkash.dart';
import 'package:flutter/material.dart';
import 'dart:developer' as dev;

enum PaymentType { payWithoutAgreement }

class Bkash extends StatefulWidget {
  final dynamic amount;

  const Bkash({super.key, required this.amount});

  @override
  BkashState createState() => BkashState();
}

class BkashState extends State<Bkash> {
  dynamic amount;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final TextEditingController _amountController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController addressController = TextEditingController();

  bool isLoading = false;

  final PaymentType _paymentType = PaymentType.payWithoutAgreement;

  @override
  void initState() {
    super.initState();
    amount = widget.amount;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: const Text("bkash Payment"),
        foregroundColor: Colors.white,
        backgroundColor: Colors.pink,
      ),
      body: Stack(
        children: [
          isLoading
              ? const Center(
                  child: CircularProgressIndicator(
                    color: Colors.pink,
                  ),
                )
              : SingleChildScrollView(
                  padding: const EdgeInsets.all(40),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: double.infinity,
                        height: 150,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.pink, width: 3),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Center(
                          child: Container(
                            width: 250,
                            height: 125,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                              image: AssetImage("assets/images/bkash-logo.png"),
                              fit: BoxFit.scaleDown,
                            )),
                          ),
                        ),
                      ),
                      const SizedBox(height: 40),
                      if (_paymentType == PaymentType.payWithoutAgreement) ...[
                        const Text(
                          'Name :',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          controller: nameController,
                          decoration: const InputDecoration(
                            hintText: "Enter your name:",
                            hintFadeDuration: Duration(milliseconds: 300),
                            hintStyle: TextStyle(
                                fontStyle: FontStyle.italic, fontSize: 15),
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 0),
                            border: OutlineInputBorder(
                                borderRadius:
                                BorderRadius.all(Radius.circular(5)),
                                borderSide: BorderSide(color: Colors.grey)),
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                              BorderSide(color: Colors.pink, width: 2.0),
                            ),
                            // hintText: reviewTitle,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'Address :',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          controller: addressController,
                          decoration: const InputDecoration(
                            hintText: "Enter your Address:",
                            hintFadeDuration: Duration(milliseconds: 300),
                            hintStyle: TextStyle(
                                fontStyle: FontStyle.italic, fontSize: 15),
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 0),
                            border: OutlineInputBorder(
                                borderRadius:
                                BorderRadius.all(Radius.circular(5)),
                                borderSide: BorderSide(color: Colors.grey)),
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                              BorderSide(color: Colors.pink, width: 2.0),
                            ),
                            // hintText: reviewTitle,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'Amount :',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          controller: _amountController,
                          decoration: InputDecoration(
                            hintText: "Enter your amount: $amount BDT",
                            hintFadeDuration: const Duration(milliseconds: 300),
                            hintStyle: const TextStyle(
                                fontStyle: FontStyle.italic, fontSize: 15),
                            contentPadding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 0),
                            border: const OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5)),
                                borderSide: BorderSide(color: Colors.grey)),
                            focusedBorder: const OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.pink, width: 2.0),
                            ),
                            // hintText: reviewTitle,
                          ),
                          keyboardType: TextInputType.number,
                          maxLines: 1,
                          minLines: 1,
                        ),
                      ],
                      const SizedBox(height: 40),
                      Center(
                        child: TextButton(
                          style: TextButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(3.0),
                              ),
                              backgroundColor: Colors.pink),
                          child: const Text(
                            "Checkout",
                            style: TextStyle(color: Colors.white),
                          ),
                          onPressed: () async {
                            setState(() {
                              isLoading = true;
                            });

                            /// create an instance of FlutterBkash
                            final flutterBkash = FlutterBkash();

                            /// if the payment type is payWithoutAgreement
                            if (_paymentType ==
                                PaymentType.payWithoutAgreement) {
                              final amount = _amountController.text.trim();
                              final name = nameController.text.trim();
                              final address = addressController.text.trim();

                              if (name.isEmpty) {
                                // if the amount is empty then show the snack-bar
                                ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                        content: Text(
                                            "Please enter your name !!!")));
                                setState(() {
                                  isLoading = false;
                                });
                                return;
                              }else if (address.isEmpty){
                                ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                        content: Text(
                                            "Please enter your address !!!")));
                                setState(() {
                                  isLoading = false;
                                });
                                return;
                              }else if (amount.isEmpty){
                                ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                        content: Text(
                                            "Amount is empty. try again")));
                                setState(() {
                                  isLoading = false;
                                });
                                return;
                              }

                              /// remove focus from TextField to hide keyboard
                              FocusManager.instance.primaryFocus?.unfocus();

                              /// Goto BkashPayment page & pass the params
                              try {
                                /// call pay method to pay without agreement as parameter pass the context, amount, merchantInvoiceNumber
                                final result = await flutterBkash.pay(
                                  context: context,
                                  // need the context as BuildContext
                                  amount: double.parse(amount),
                                  // need it double type
                                  merchantInvoiceNumber: "tranId",
                                );

                                /// if the payment is success then show the log
                                dev.log(result.toString());

                                /// if the payment is success then show the snack-bar
                                _showSnackbar(
                                    "(Success) tranId: ${result.trxId}");
                              } on BkashFailure catch (e, st) {
                                /// if something went wrong then show the log
                                dev.log(e.message, error: e, stackTrace: st);

                                /// if something went wrong then show the snack-bar
                                _showSnackbar(e.message);
                              } catch (e, st) {
                                /// if something went wrong then show the log
                                dev.log("Something went wrong",
                                    error: e, stackTrace: st);

                                /// if something went wrong then show the snack-bar
                                _showSnackbar("Something went wrong");
                              }
                              setState(() {
                                isLoading = false;
                              });
                              return;
                            }
                          },
                        ),
                      ),
                    ],
                  ),
                ),
        ],
      ),
    );
  }

  /// show snack-bar with message
  void _showSnackbar(String message) => ScaffoldMessenger.of(context)
    ..hideCurrentSnackBar()
    ..showSnackBar(SnackBar(content: Text(message)));
}
