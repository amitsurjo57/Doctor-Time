import 'package:flutter/material.dart';
import 'package:doctor_appoinment/Custom Widget/doctor_intro.dart';

class marzia_rahman extends StatelessWidget {
  const marzia_rahman({super.key});

  @override
  Widget build(BuildContext context) {
    return DoctorIntro(
      doctor_image_path: "assets/images/Doctors Images/doctor3.png",
      doctor_experience: "15+",
      doctor_name: "Dr. Marzia Rahman",
      doctor_name_fontsize: 14,
      doctor_degree: "BDS, MPH (Dentistry)",
      doctor_degree_fontsize: 10,
      doctor_type: "Dentistry",
      doctor_bill: 350,
      doctor_phone_call: "01623485195",
      doctor_video_call: "https://call.whatsapp.com/video/4TTXpaqkz2LuMiN7rPjYAw",
    );
  }
}