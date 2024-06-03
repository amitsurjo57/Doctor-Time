import 'package:flutter/material.dart';
import 'package:doctor_appoinment/Custom Widget/doctor_intro.dart';

class ismat_zerin extends StatelessWidget {
  const ismat_zerin({super.key});

  @override
  Widget build(BuildContext context) {
    return DoctorIntro(
      doctor_image_path: "assets/images/Doctors Images/doctor6.png",
      doctor_experience: "7+",
      doctor_name: "Ismat Zerin",
      doctor_name_fontsize: 14,
      doctor_degree: "BSc (Nutrition & Food Science),\nMSc (Nutrition & Food Science)",
      doctor_type: "Nutritionist",
      doctor_bill: 550,
      doctor_phone_call: "01623485195",
      doctor_video_call: "https://call.whatsapp.com/video/4TTXpaqkz2LuMiN7rPjYAw",
    );
  }
}