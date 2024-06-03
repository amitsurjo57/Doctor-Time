import 'dart:async';
import 'package:doctor_appoinment/log_in_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const LogInPage(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  "assets/images/splash.png",
                  height: 100,
                  alignment: Alignment.center,
                ).animate().slide(
                      duration: const Duration(seconds: 1),
                      delay: const Duration(milliseconds: 300),
                      begin: const Offset(0, -2),
                      curve: Curves.easeInOut,
                    ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: "Doctor",
                            style: TextStyle(
                              fontSize: 45,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: "\n      Time",
                            style: TextStyle(
                              fontSize: 50,
                              fontWeight: FontWeight.w900,
                              fontStyle: FontStyle.italic,
                              color: Colors.lightBlue,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 100),
                  ],
                ).animate().slide(
                      duration: const Duration(seconds: 1),
                      begin: const Offset(-2, 0),
                      delay: const Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                    ),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/splash screen image.png",
                      width: 340,
                      height: 340,
                      fit: BoxFit.cover,
                    ),
                  ],
                )
                    .animate()
                    .fade(
                      duration: const Duration(seconds: 1),
                      delay: const Duration(milliseconds: 1500),
                      curve: Curves.fastEaseInToSlowEaseOut,
                    )
                    .slide(
                      duration: const Duration(seconds: 1),
                      begin: const Offset(0, 0.5),
                      curve: Curves.fastEaseInToSlowEaseOut,
                    ),
                const Spacer(),
                Image.asset(
                  "assets/images/splash.png",
                  height: 100,
                  alignment: Alignment.center,
                ).animate().slide(
                      duration: const Duration(seconds: 1),
                      begin: const Offset(0, 2),
                      delay: const Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                    ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
