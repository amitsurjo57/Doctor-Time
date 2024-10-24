import 'package:doctor_appoinment/Custom%20Widget/doctor_profile.dart';
import 'package:flutter/material.dart';

import 'doctor_list.dart';

class search_bar extends StatefulWidget {
  const search_bar({super.key});

  @override
  State<search_bar> createState() => _search_barState();
}

class _search_barState extends State<search_bar> {
  List<Doctor> doctors = allDoctors;

  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30,bottom: 10),
                child: Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.blue.shade50,
                      borderRadius: BorderRadius.circular(50),
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 10,
                          blurStyle: BlurStyle.solid,
                          color: Colors.black38,
                        )
                      ]),
                  child: TextField(
                    controller: controller,
                    autocorrect: true,
                    autofocus: true,
                    textAlign: TextAlign.start,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: Icon(Icons.search),
                      hintText: "Search doctor by name",
                      alignLabelWithHint: true,
                      hintFadeDuration: Duration(milliseconds: 300),
                      contentPadding: EdgeInsets.only(left: 25, top: 10),
                    ),
                    onChanged: searchDoctor,
                  ),
                ),
              ),
              Expanded(
                child: ListView.separated(
                  padding: const EdgeInsets.only(top: 30,bottom: 30),
                  separatorBuilder: (context, index) =>
                      const SizedBox(height: 30),
                  itemCount: doctors.length,
                  itemBuilder: (context, index) {
                    final doctor = doctors[index];
                    return Column(
                      children: [
                        Container(
                          width: 330,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50),
                            boxShadow: const [
                              BoxShadow(
                                blurRadius: 10,
                                color: Colors.grey,
                              )
                            ],
                          ),
                          child: Center(
                            child: ListTile(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return DoctorProfile(
                                        doctor_image_path: doctor.doctor_image_path!,
                                        doctor_name: doctor.doctor_name!,
                                        doctor_type: doctor.doctor_type!,
                                        doctor_degree: doctor.doctor_degree!,
                                        experience: doctor.experience!,
                                        hospital: doctor.hospital!,
                                      );
                                    },
                                  ),
                                );
                              },
                              leading: Image.asset(
                                doctor.doctor_image_path!,
                                fit: BoxFit.cover,
                                width: 50,
                                height: 60,
                              ),
                              title: Text(
                                doctor.doctor_name!,
                                style: TextStyle(
                                    fontSize: doctor.doctor_name_fonsize,
                                    fontWeight: FontWeight.bold),
                              ),
                              subtitle: Text(
                                doctor.doctor_type!,
                                style: TextStyle(
                                    fontSize: doctor.doctor_degree_fontsize),
                              ),
                              trailing: Text(
                                doctor.doctor_degree!,
                                style: TextStyle(
                                    fontSize: doctor.doctor_degree_fontsize),
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void searchDoctor(String query) {
    final suggestions = allDoctors.where((doctor) {
      final doctor_name = doctor.doctor_name!.toLowerCase();
      final input = query.toLowerCase();

      return doctor_name.contains(input);
    }).toList();

    setState(() {
      doctors = suggestions;
    });
  }
}
