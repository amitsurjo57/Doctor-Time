import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class PatientProfile extends StatelessWidget {
  final String patient_blood_group;

  PatientProfile({super.key, required this.patient_blood_group});

  final List patient_details = [
    [
      "Ashraful Islam Ashiq",
      "21",
      "Seriously injured\nin Bike Accident",
      "Dhaka Medical College Hospital",
      "2 bag",
    ],
    [
      "Mehenaz Alam",
      "21",
      "Heart Problems",
      "National Heart Foundation Hospital &\nResearch Institute",
      "1 bag",
    ],
    [
      "Rafid Bin Jahangir",
      "25",
      "Serious Burn\nin body",
      "Sheikh Hasina National\nInstitute of Burn & Plastic Surgery",
      "4 bag",
    ],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Patient list of $patient_blood_group Blood Group"),
        titleTextStyle: const TextStyle(fontSize: 17,color: Colors.black),
        centerTitle: true,
      ),
      body: Center(
        child: ListView.separated(
          separatorBuilder: (context, index) =>
              const Divider(thickness: 2, height: 40),
          padding:
              const EdgeInsets.only(left: 20, right: 20, top: 50, bottom: 20),
          itemCount: 3,
          itemBuilder: (context, index) => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Card(
                    elevation: 10,
                    child: SizedBox(
                      width: 100,
                      height: 150,
                      child: Icon(Icons.person, size: 100),
                    ),
                  ),
                  const SizedBox(width: 30),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(patient_details[index][0],
                          style: const TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center),
                      const SizedBox(height: 10),
                      Text("age: ${patient_details[index][1]}",
                          style: const TextStyle(
                              fontSize: 13, color: Colors.blue)),
                      const SizedBox(height: 10),
                      Text("Problem: ${patient_details[index][2]}",
                          style: const TextStyle(
                              fontSize: 13, color: Colors.purpleAccent)),
                      const SizedBox(height: 20),
                      Text(
                        "Blood Group: $patient_blood_group",
                        style: const TextStyle(
                          fontSize: 15,
                          color: Colors.redAccent,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Text(
                "Hospital: ${patient_details[index][3]}",
                style: const TextStyle(fontSize: 15, color: Colors.pink),
              ),
              const SizedBox(height: 15),
              Text(
                "Blood Needed: ${patient_details[index][4]}",
                style: const TextStyle(fontSize: 15),
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: () {
                      launchUrl(
                        Uri(scheme: "tel", path: "01623485195"),
                      );
                    },
                    child: Container(
                      color: Colors.lightGreen,
                      width: 125,
                      height: 30,
                      child: const FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(Icons.phone, color: Colors.white),
                              SizedBox(width: 2),
                              Text(
                                "Conatct now",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
