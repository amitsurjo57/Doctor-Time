import 'package:flutter/material.dart';
import 'package:doctor_appoinment/Custom Widget/doctor_intro.dart';

class mithun_sarkar extends StatelessWidget {
  const mithun_sarkar({super.key});

  @override
  Widget build(BuildContext context) {
    return DoctorIntro(
      doctor_image_path: "assets/images/Doctors Images/doctor7.png",
      doctor_experience: "10+",
      doctor_name: "Dr. Mithun Sarker",
      doctor_name_fontsize: 14,
      doctor_degree: "MBBS, DCH (Pediatrics)",
      doctor_degree_fontsize: 10,
      doctor_type: "Child Diseases Specialist",
      doctor_type_container_width: 140,
      doctor_bill: 350,
      doctor_phone_call: "01623485195",
      doctor_video_call: "https://call.whatsapp.com/video/4TTXpaqkz2LuMiN7rPjYAw",
    );
  }
}