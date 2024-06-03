import 'package:flutter/material.dart';
import 'package:doctor_appoinment/Custom Widget/doctor_intro.dart';

class hannanur_rahman_jewel extends StatelessWidget {
  const hannanur_rahman_jewel({super.key});

  @override
  Widget build(BuildContext context) {
    return DoctorIntro(
      doctor_image_path: "assets/images/Doctors Images/doctor2.png",
      doctor_experience: "35+",
      doctor_name: "Asst. Prof. Dr. Kazi Md\nHannanur Rahman Jewel",
      doctor_name_fontsize: 11,
      doctor_degree: "MBBS, MS (Orthopedics),\nFCPS (Orthopedics)",
      doctor_type: "Orthopedist",
      doctor_bill: 1500,
      doctor_phone_call: "01623485195",
      doctor_video_call: "https://call.whatsapp.com/video/4TTXpaqkz2LuMiN7rPjYAw",
    );
  }
}