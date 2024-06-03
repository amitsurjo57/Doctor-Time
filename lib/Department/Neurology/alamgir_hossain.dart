import 'package:flutter/material.dart';
import 'package:doctor_appoinment/Custom Widget/doctor_intro.dart';

class alamgir_hossain extends StatelessWidget {
  const alamgir_hossain({super.key});

  @override
  Widget build(BuildContext context) {
    return DoctorIntro(
      doctor_image_path: "assets/images/Doctors Images/doctor4.png",
      doctor_experience: "10+",
      doctor_name: "Dr. Alamgir Hossain",
      doctor_name_fontsize: 14,
      doctor_degree: "MBBS, MD (Neurology)",
      doctor_degree_fontsize: 10,
      doctor_type: "Neurologist",
      doctor_bill: 1000,
      doctor_phone_call: "01623485195",
      doctor_video_call: "https://call.whatsapp.com/video/4TTXpaqkz2LuMiN7rPjYAw",
    );
  }
}