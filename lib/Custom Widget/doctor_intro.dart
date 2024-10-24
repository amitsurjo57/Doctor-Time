import 'dart:io';
import 'package:doctor_appoinment/Database/db_history.dart';
import 'package:doctor_appoinment/Database/history_model.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:intl/intl.dart';

import '../Video Conference/name_input.dart';

class DoctorIntro extends StatelessWidget {
  final int? index;
  final String doctor_image_path;
  final String doctor_experience;
  final String doctor_name;
  final String doctor_degree;
  final String doctor_type;
  final int doctor_bill;
  final String doctor_phone_call;
  final String doctor_video_call;
  final double? doctor_name_fontsize;
  final double? doctor_degree_fontsize;
  final double? doctor_type_fontsize;
  final double? doctor_type_container_width;

  DoctorIntro({
    super.key,
    this.index,
    required this.doctor_image_path,
    required this.doctor_experience,
    required this.doctor_name,
    required this.doctor_degree,
    required this.doctor_type,
    required this.doctor_bill,
    required this.doctor_phone_call,
    required this.doctor_video_call,
    this.doctor_name_fontsize = 12,
    this.doctor_degree_fontsize = 9,
    this.doctor_type_fontsize = 10,
    this.doctor_type_container_width = 70,
  });

  final time = DateTime.now();
  final DbHistory? dbHistory = DbHistory();

  final Widget phone_call = Container(
    color: Colors.lightGreen,
    width: 130,
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
              "Contact now",
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    ),
  );
  final Widget video_call = Container(
    color: Colors.blue.shade300,
    width: 130,
    height: 30,
    child: const FittedBox(
      fit: BoxFit.scaleDown,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(Icons.video_call, color: Colors.white),
            SizedBox(width: 2),
            Text(
              "Video Conference",
              style: TextStyle(fontSize: 10, color: Colors.white),
            ),
          ],
        ),
      ),
    ),
  );


  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 230,
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
        boxShadow: const [
          BoxShadow(
            blurRadius: 10,
            blurStyle: BlurStyle.solid,
            color: Colors.grey,
          )
        ],
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(doctor_image_path),
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        "$doctor_experience years",
                        style: const TextStyle(
                            fontSize: 13, fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        "experience",
                        style: TextStyle(fontSize: 13),
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    doctor_name,
                    style: TextStyle(
                      fontSize: doctor_name_fontsize,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    doctor_degree,
                    style: TextStyle(fontSize: doctor_degree_fontsize),
                  ),
                  const SizedBox(height: 10),
                  FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Container(
                      width: doctor_type_container_width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.blue,
                      ),
                      child: Center(
                        child: Text(
                          doctor_type,
                          style: TextStyle(
                              fontSize: doctor_type_fontsize, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  Text(
                    "$doctor_bill BDT",
                    style: const TextStyle(color: Colors.blue),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  InkWell(
                    onTap: () {
                      launchUrl(
                        Uri(scheme: "tel", path: doctor_phone_call),
                      );
                      dbHistory!
                          .insert(
                        AppointmentHistory(
                          id: index,
                          doctor_image_path: doctor_image_path,
                          doctor_name: doctor_name,
                          doctor_type: doctor_type,
                          date: DateFormat('yMMMEd').format(time).toString(),
                          time: DateFormat('jms').format(time).toString(),
                          call_type: "Phone Call",
                        ),
                      )
                          .then((value) {
                        stdout.write("History is added");
                      }).onError((error, stackTrace) {
                        stdout.write(error.toString());
                      });
                    },
                    child: phone_call,
                  ),
                  const SizedBox(height: 5),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => UseridInput(),
                        ),
                      );
                      dbHistory!
                          .insert(
                        AppointmentHistory(
                          id: index,
                          doctor_image_path: doctor_image_path,
                          doctor_name: doctor_name,
                          doctor_type: doctor_type,
                          date: DateFormat('yMMMEd').format(time).toString(),
                          time: DateFormat('jms').format(time).toString(),
                          call_type: "Video Call",
                        ),
                      )
                          .then((value) {
                        stdout.write("History is added");
                      }).onError((error, stackTrace) {
                        stdout.write(error.toString());
                      });
                    },
                    child: video_call,
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
