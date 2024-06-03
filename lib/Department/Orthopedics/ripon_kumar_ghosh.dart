import 'package:flutter/material.dart';
import 'package:doctor_appoinment/Custom Widget/doctor_intro.dart';

class ripon_kumar_ghosh extends StatelessWidget {
  const ripon_kumar_ghosh({super.key});

  @override
  Widget build(BuildContext context) {
    return DoctorIntro(
      doctor_image_path: "assets/images/Doctors Images/doctor1.png",
      doctor_experience: "15+",
      doctor_name: "Dr. Ripon Kumar\nGhosh",
      doctor_name_fontsize: 14,
      doctor_degree: "MBBS, MS (Orthopedics)",
      doctor_degree_fontsize: 10,
      doctor_type: "Orthopedist",
      doctor_bill: 1000,
      doctor_phone_call: "01623485195",
      doctor_video_call:"https://call.whatsapp.com/video/4TTXpaqkz2LuMiN7rPjYAw",
    );
  }
}