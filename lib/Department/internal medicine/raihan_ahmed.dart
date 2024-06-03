import 'package:flutter/material.dart';
import 'package:doctor_appoinment/Custom Widget/doctor_intro.dart';

class raihan_ahmed extends StatelessWidget {
  const raihan_ahmed({super.key});

  @override
  Widget build(BuildContext context) {
    return DoctorIntro(
      doctor_image_path: "assets/images/Doctors Images/doctor2.png",
      doctor_experience: "11+",
      doctor_name: "Dr. Raihan Ahmed",
      doctor_name_fontsize: 14,
      doctor_degree: "MBBS,\nFCPS (Internal Medicine)",
      doctor_degree_fontsize: 10,
      doctor_type: "Internal Medicine",
      doctor_type_container_width: 100,
      doctor_type_fontsize: 10,
      doctor_bill: 500,
      doctor_phone_call: "01623485195",
      doctor_video_call: "https://call.whatsapp.com/video/4TTXpaqkz2LuMiN7rPjYAw",
    );
  }
}