import 'package:flutter/material.dart';
import 'package:doctor_appoinment/Custom Widget/doctor_intro.dart';

class anisul_hoque extends StatelessWidget {
  const anisul_hoque({super.key});

  @override
  Widget build(BuildContext context) {
    return DoctorIntro(
      doctor_image_path: "assets/images/Doctors Images/doctor1.png",
      doctor_experience: "9+",
      doctor_name: "Dr. Md. Anisul Hoque",
      doctor_name_fontsize: 13,
      doctor_degree: "MBBS",
      doctor_degree_fontsize: 10,
      doctor_type: "Nephrologist",
      doctor_type_container_width: 80,
      doctor_bill: 430,
      doctor_phone_call: "01623485195",
      doctor_video_call: "https://call.whatsapp.com/video/4TTXpaqkz2LuMiN7rPjYAw",
    );
  }
}
