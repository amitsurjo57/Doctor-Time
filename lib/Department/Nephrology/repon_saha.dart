import 'package:flutter/material.dart';
import 'package:doctor_appoinment/Custom Widget/doctor_intro.dart';

class repon_saha extends StatelessWidget {
  const repon_saha({super.key});

  @override
  Widget build(BuildContext context) {
    return DoctorIntro(
      doctor_image_path: "assets/images/Doctors Images/doctor4.png",
      doctor_experience: "10+",
      doctor_name: "Dr. Repon Saha",
      doctor_name_fontsize: 14,
      doctor_degree: "MBBS, MD (Nephrology)",
      doctor_degree_fontsize: 10,
      doctor_type:"Nephrologist",
      doctor_type_container_width: 80,
      doctor_bill: 500,
      doctor_phone_call: "01623485195",
      doctor_video_call: "https://call.whatsapp.com/video/4TTXpaqkz2LuMiN7rPjYAw",
    );
  }
}