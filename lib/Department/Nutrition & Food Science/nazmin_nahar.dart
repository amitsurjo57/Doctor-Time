import 'package:flutter/material.dart';
import 'package:doctor_appoinment/Custom Widget/doctor_intro.dart';

class nazmin_nahar extends StatelessWidget {
  const nazmin_nahar({super.key});

  @override
  Widget build(BuildContext context) {
    return DoctorIntro(
      doctor_image_path: "assets/images/Doctors Images/doctor5.png",
      doctor_experience: "6+",
      doctor_name: "Nazmin Nahar",
      doctor_name_fontsize: 14,
      doctor_degree: "BSc (Nutrition & Food Science),\nMSc (Nutrition & Food Science)",
      doctor_type: "Nutritionist",
      doctor_bill: 400,
      doctor_phone_call: "01623485195",
      doctor_video_call: "https://call.whatsapp.com/video/4TTXpaqkz2LuMiN7rPjYAw",
    );
  }
}