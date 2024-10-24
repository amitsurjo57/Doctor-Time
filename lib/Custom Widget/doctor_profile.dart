import 'package:flutter/material.dart';

class DoctorProfile extends StatelessWidget {
  final String doctor_image_path;
  final String doctor_name;
  final String doctor_type;
  final String doctor_degree;
  final String experience;
  final String hospital;

  const DoctorProfile({
    super.key,
    required this.doctor_image_path,
    required this.doctor_name,
    required this.doctor_type,
    required this.doctor_degree,
    required this.experience,
    required this.hospital,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          top: 50,
          left: 20,
          right: 20,
        ),
        child: Center(
          child: ListView(
            children: [
              SizedBox(
                width: 200,
                height: 300,
                child: Image.asset(doctor_image_path,fit: BoxFit.fill),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    doctor_name,
                    style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "$doctor_type Doctors",
                    style: const TextStyle(fontSize: 15),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    doctor_degree,
                    style: const TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "$experience experience",
                    style: const TextStyle(fontSize: 15),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Worked in\n$hospital",
                    style: const TextStyle(fontSize: 18,fontWeight: FontWeight.w500),
                    textAlign: TextAlign.center,
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
