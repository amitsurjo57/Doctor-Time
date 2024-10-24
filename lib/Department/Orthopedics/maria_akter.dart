import 'package:flutter/material.dart';
import 'package:doctor_appoinment/Custom Widget/doctor_intro.dart';

class maria_akter extends StatelessWidget {
  const maria_akter({super.key});

  @override
  Widget build(BuildContext context) {
    return DoctorIntro(
      doctor_image_path: "assets/images/Doctors Images/doctor5.png",
      doctor_experience: "10+",
      doctor_name: "Dr. Maria Akter",
      doctor_name_fontsize: 14,
      doctor_degree: "MBBS, MS (Orthopedics)",
      doctor_degree_fontsize: 10,
      doctor_type: "Orthopedist",
      doctor_bill: 1200,
      doctor_phone_call: "01623485195",
      doctor_video_call: "https://call.whatsapp.com/video/4TTXpaqkz2LuMiN7rPjYAw",
    );
  }
}