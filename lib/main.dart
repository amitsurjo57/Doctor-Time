import 'package:doctor_appoinment/Database/cart_provider.dart';
import 'package:doctor_appoinment/Database/history_provider.dart';
import 'package:doctor_appoinment/History%20Page/history_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:doctor_appoinment/Doctor Page/doctor_page.dart';
import 'package:doctor_appoinment/Blood Donation Page/blood_donation.dart';
import 'package:provider/provider.dart';
import 'Medicine Page/medicine_page.dart';
import 'splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => CartProvider()),
        ChangeNotifierProvider(create: (context) => HistoryProvider()),
      ],
      child: Builder(builder: (context) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'A Doctor Appoinment App',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
            useMaterial3: true,
          ),
          home: const SplashScreen(),
        );
      },),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  var index = 0;
  final screens = [
    DoctorPage(),
    const BloodDonation(),
    MedicinePage(),
    const HistoryScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        indicatorColor: Colors.blue.shade100,
        selectedIndex: index,
        onDestinationSelected: (value) {
          setState(() {
            index = value;
          });
        },
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.person_2_outlined),
            selectedIcon: Icon(Icons.person),
            label: "Doctor",
          ),
          NavigationDestination(
            icon: Icon(Icons.bloodtype_outlined),
            selectedIcon: Icon(Icons.bloodtype),
            label: "Blood",
          ),
          NavigationDestination(
            icon: Icon(FontAwesomeIcons.capsules),
            selectedIcon: Icon(FontAwesomeIcons.pills),
            label: "Medicines",
          ),
          NavigationDestination(
            icon: Icon(Icons.history_toggle_off),
            selectedIcon: Icon(Icons.history),
            label: "History",
          ),
        ],
      ),
      body: screens[index],
    );
  }
}
