import 'package:flutter/material.dart';
import 'package:doctor_appoinment/Custom Widget/doctor_intro.dart';

class md_sazzad_hosen_romel extends StatelessWidget {
  const md_sazzad_hosen_romel({super.key});

  @override
  Widget build(BuildContext context) {
    return DoctorIntro(
      doctor_image_path: "assets/images/Doctors Images/doctor1.png",
      doctor_experience: "17+",
      doctor_name: "Asst. Prof. Dr. Major Md\nSazzad Hosen Romel",
      doctor_degree: "MBBS, MSc (Cardiology)",
      doctor_type: "Cardiologist",
      doctor_bill: 500,
      doctor_phone_call: "01623485195",
      doctor_video_call: "https://call.whatsapp.com/video/4TTXpaqkz2LuMiN7rPjYAw",
    );
  }
}
