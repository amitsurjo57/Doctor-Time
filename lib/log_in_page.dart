import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import 'HomePage.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({super.key});

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  final TextEditingController user = TextEditingController();
  final TextEditingController pass = TextEditingController();
  final GlobalKey<FormState> globalKey = GlobalKey<FormState>();
  bool? showPassword = false;
  dynamic warningIcon;

  @override
  dispose(){
    user.dispose();
    pass.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Form(
          key: globalKey,
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
                child: TextFormField(
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
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (String? value){
                    if(value == null || value.isEmpty){
                      return 'Enter your username';
                    } else if (value != 'surjo003'){
                      return 'Enter correct username';
                    }
                    return null;
                  },
                ),
              ),
              const SizedBox(height: 40),
              SizedBox(
                width: 300,
                child: Column(
                  children: [
                    TextFormField(
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
                      obscureText: showPassword! ? false : true,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (String? value){
                        if(value == null || value.isEmpty){
                          return 'Enter your password';
                        }else if(value.length < 6){
                          return 'Password should be at least 6 character';
                        }else if (value != '123456789'){
                          return 'Enter correct password';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Checkbox(
                          value: showPassword,
                          onChanged: (value) {
                            setState(() {
                              showPassword = value;
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
                    if(globalKey.currentState!.validate()){
                      Navigator.pushReplacement(
                        context,
                        PageTransition(
                          child: const MyHomePage(),
                          type: PageTransitionType.fade,
                          duration: const Duration(seconds: 1),
                          curve: Curves.fastEaseInToSlowEaseOut,
                        ),
                      );
                    }
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
      ),
    );
  }
}
