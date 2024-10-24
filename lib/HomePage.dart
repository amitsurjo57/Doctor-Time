import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Blood Donation Page/blood_donation.dart';
import 'Doctor Page/doctor_page.dart';
import 'History Page/history_screen.dart';
import 'Medicine Page/medicine_page.dart';

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
