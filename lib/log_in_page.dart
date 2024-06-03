import 'package:doctor_appoinment/main.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({super.key});

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  var user = TextEditingController();
  var pass = TextEditingController();
  String msg = " ";
  bool? showpassword = false;
  dynamic warningIcon;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(width: 3),
                ),
              ),
              child: const Text(
                "Log In",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 40),
            SizedBox(
              width: 300,
              child: TextField(
                controller: user,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: Colors.lightBlue, width: 2),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  label: const Text(
                    "Enter your username",
                    style: TextStyle(fontSize: 15),
                  ),
                  prefixIcon: const Icon(Icons.account_circle_outlined),
                ),
              ),
            ),
            const SizedBox(height: 40),
            SizedBox(
              width: 300,
              child: Column(
                children: [
                  TextField(
                    controller: pass,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.lightBlue, width: 2),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      label: const Text("Enter your password"),
                      prefixIcon: const Icon(Icons.lock_outline_rounded),
                    ),
                    obscureText: showpassword! ? false : true,
                  ),
                  const SizedBox(height: 5),
                  Row(
                    children: [
                      const SizedBox(width: 10),
                      Icon(warningIcon, color: Colors.red),
                      const SizedBox(width: 5),
                      Text(
                        msg,
                        style: const TextStyle(color: Colors.red, fontSize: 10),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Checkbox(
                        value: showpassword,
                        onChanged: (value) {
                          setState(() {
                            showpassword = value;
                          });
                        },
                        activeColor:
                            Theme.of(context).colorScheme.inversePrimary,
                      ),
                      const Text("Show Password"),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: 300,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    String username = user.text.toString();
                    String password = pass.text.toString();

                    if (username == "surjo003" && password == "12345") {
                      Navigator.pushReplacement(
                        context,
                        PageTransition(
                          child: const MyHomePage(),
                          type: PageTransitionType.fade,
                          duration: const Duration(seconds: 1),
                          curve: Curves.fastEaseInToSlowEaseOut,
                        ),
                      );
                    } else {
                      msg = "Please enter the correct username and password";
                      warningIcon = Icons.warning;
                    }
                  });
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Theme.of(context).colorScheme.inversePrimary,
                  foregroundColor: Colors.black,
                  elevation: 20,
                ),
                child: const Text("Log In"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
