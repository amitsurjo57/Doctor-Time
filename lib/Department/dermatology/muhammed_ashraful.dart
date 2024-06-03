import 'package:flutter/material.dart';
import 'package:doctor_appoinment/Custom Widget/doctor_intro.dart';

class muhammed_ashraful extends StatelessWidget {
  const muhammed_ashraful({super.key});

  @override
  Widget build(BuildContext context) {
    return DoctorIntro(
      doctor_image_path: "assets/images/Doctors Images/doctor1.png",
      doctor_experience: "14+",
      doctor_name: "Assoc. Prof. Dr. Muhammed\nAshraful Alam Bhuiyan",
      doctor_name_fontsize: 10,
      doctor_degree: "MBBS, FCPS (Dermatology)",
      doctor_degree_fontsize: 10,
      doctor_type: "Dermatologist",
      doctor_type_container_width: 80,
      doctor_bill: 350,
      doctor_phone_call: "01623485195",
      doctor_video_call: "https://call.whatsapp.com/video/4TTXpaqkz2LuMiN7rPjYAw",
    );
  }
}