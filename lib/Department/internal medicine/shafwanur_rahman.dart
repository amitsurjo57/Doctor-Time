import 'package:flutter/material.dart';
import 'package:doctor_appoinment/Custom Widget/doctor_intro.dart';

class shafwanur_rahman extends StatelessWidget {
  const shafwanur_rahman({super.key});

  @override
  Widget build(BuildContext context) {
    return DoctorIntro(
      doctor_image_path: "assets/images/Doctors Images/doctor7.png",
      doctor_experience: "7+",
      doctor_name: "Dr. Shafwanur\nRahman",
      doctor_name_fontsize: 14,
      doctor_degree: "MBBS",
      doctor_degree_fontsize: 10,
      doctor_type: "Internal Medicine",
      doctor_type_container_width: 100,
      doctor_bill: 300,
      doctor_phone_call: "01623485195",
      doctor_video_call: "https://call.whatsapp.com/video/4TTXpaqkz2LuMiN7rPjYAw",
    );
  }
}