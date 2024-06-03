import 'package:flutter/material.dart';
import 'package:doctor_appoinment/Custom Widget/doctor_intro.dart';
class md_rafiqul_islam extends StatelessWidget {
  const md_rafiqul_islam({super.key});

  @override
  Widget build(BuildContext context) {
    return DoctorIntro(
      doctor_image_path: "assets/images/Doctors Images/doctor4.png",
      doctor_experience: "15+",
      doctor_name: "Dr. Md. Rafiqul Islam",
      doctor_name_fontsize: 14,
      doctor_degree: "MBBS, MD (Cardiology)",
      doctor_degree_fontsize: 10,
      doctor_type: "Cardiologist",
      doctor_bill: 600,
      doctor_phone_call: "01623485195",
      doctor_video_call: "https://call.whatsapp.com/video/4TTXpaqkz2LuMiN7rPjYAw",
    );
  }
}