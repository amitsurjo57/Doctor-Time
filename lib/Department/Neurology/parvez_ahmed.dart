import 'package:flutter/material.dart';
import 'package:doctor_appoinment/Custom Widget/doctor_intro.dart';

class parvez_ahmed extends StatelessWidget {
  const parvez_ahmed({super.key});

  @override
  Widget build(BuildContext context) {
    return DoctorIntro(
      doctor_image_path: "assets/images/Doctors Images/doctor2.png",
      doctor_experience: "20+",
      doctor_name: "Asst. Prof. Dr. Khandker\nParvez Ahmad",
      doctor_degree: "MBBS, Phd (Neurology)",
      doctor_type: "Neurologist",
      doctor_bill: 1500,
      doctor_phone_call: "01623485195",
      doctor_video_call: "https://call.whatsapp.com/video/4TTXpaqkz2LuMiN7rPjYAw",
    );
  }
}