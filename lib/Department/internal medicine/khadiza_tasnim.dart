import 'package:flutter/material.dart';
import 'package:doctor_appoinment/Custom Widget/doctor_intro.dart';

class khadiza_tasnim extends StatelessWidget {
  const khadiza_tasnim({super.key});

  @override
  Widget build(BuildContext context) {
    return DoctorIntro(
      doctor_image_path: "assets/images/Doctors Images/doctor5.png",
      doctor_experience: "6+",
      doctor_name: "Dr. Khadiza Tasnim",
      doctor_name_fontsize: 14,
      doctor_degree: "MBBS",
      doctor_degree_fontsize: 10,
      doctor_type: "Internal Medicine",
      doctor_type_container_width: 100,
      doctor_bill: 420,
      doctor_phone_call: "01623485195",
      doctor_video_call: "https://call.whatsapp.com/video/4TTXpaqkz2LuMiN7rPjYAw",
    );
  }
}