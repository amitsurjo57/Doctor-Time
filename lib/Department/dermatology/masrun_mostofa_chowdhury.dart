import 'package:flutter/material.dart';
import 'package:doctor_appoinment/Custom Widget/doctor_intro.dart';

class masrun_mostofa_chowdhury extends StatelessWidget {
  const masrun_mostofa_chowdhury({super.key});

  @override
  Widget build(BuildContext context) {
    return DoctorIntro(
      doctor_image_path: "assets/images/Doctors Images/doctor11.png",
      doctor_experience: "9+",
      doctor_name: "Assoc. Prof. Dr. Masrun\nMostafa Chowdhury",
      doctor_name_fontsize: 12,
      doctor_degree: "MBBS, DDV (Dermatology)",
      doctor_degree_fontsize: 10,
      doctor_type: "Dermatologist",
      doctor_type_container_width: 80,
      doctor_bill: 500,
      doctor_phone_call: "01623485195",
      doctor_video_call: "https://call.whatsapp.com/video/4TTXpaqkz2LuMiN7rPjYAw",
    );
  }
}