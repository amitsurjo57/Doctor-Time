import 'package:flutter/material.dart';
import 'package:doctor_appoinment/Custom Widget/doctor_intro.dart';

class bishojit_mondol extends StatelessWidget {
  const bishojit_mondol({super.key});

  @override
  Widget build(BuildContext context) {
    return DoctorIntro(
      doctor_image_path: "assets/images/Doctors Images/doctor2.png",
      doctor_experience: "20+",
      doctor_name: "Dr. Bishojit Mondol",
      doctor_name_fontsize: 14,
      doctor_degree: "MBBS, MD (Cardiology)",
      doctor_degree_fontsize: 10,
      doctor_type: "Cardiologist",
      doctor_bill: 750,
      doctor_phone_call: "01623485195",
      doctor_video_call: "https://call.whatsapp.com/video/4TTXpaqkz2LuMiN7rPjYAw",
    );
  }
}