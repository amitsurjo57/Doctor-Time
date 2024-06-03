import 'package:page_transition/page_transition.dart';

import 'pateint_profile.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class BloodDonation extends StatefulWidget {
  const BloodDonation({super.key});

  @override
  State<BloodDonation> createState() => _BloodDonationState();
}

class _BloodDonationState extends State<BloodDonation> {
  var selectedIndex = -1;
  var blood = "";
  List blood_group = ["A+", "A-", "B+", "B-", "O+", "O-", "AB+", "AB-"];
  dynamic idx;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 25,
        right: 25,
        top: 50,
        bottom: 50,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Center(
              child: Icon(Icons.bloodtype, color: Colors.redAccent, size: 200)),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Pick Your Blood",
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.red,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 90,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                mainAxisExtent: 60,
              ),
              itemCount: blood_group.length,
              itemBuilder: (context, index) => ListTile(
                leading: Text(blood_group[index]),
                leadingAndTrailingTextStyle: const TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
                titleAlignment: ListTileTitleAlignment.bottom,
                selected: index == selectedIndex,
                selectedColor: Colors.red,
                tileColor: Colors.grey.shade300,
                selectedTileColor: Colors.red.shade100,
                onTap: () {
                  setState(() {
                    selectedIndex = index;
                    blood = blood_group[index];
                    idx = index;
                  });
                },
              ),
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            width: 300,
            child: ElevatedButton(
              onPressed: () {
                if (selectedIndex == -1) {
                  Fluttertoast.showToast(
                    msg: "Please Select Your Blood Group",
                    backgroundColor: Colors.grey.shade600,
                    toastLength: Toast.LENGTH_SHORT,
                  );
                } else {
                  Navigator.push(
                    context,
                    PageTransition(
                      child: PatientProfile(
                        patient_blood_group: blood_group[idx],
                      ),
                      type: PageTransitionType.rightToLeft,
                      curve: Curves.easeInOut,
                    ),
                  );
                }
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red.shade100,
                foregroundColor: Colors.red,
                elevation: 20,
                textStyle:
                    const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              child: const Text("Finish"),
            ),
          ),
        ],
      ),
    );
  }
}
