import 'package:flutter/material.dart';
import 'package:doctor_appoinment/Custom Widget/doctor_intro.dart';

class tahmida_ferdousi extends StatelessWidget {
  const tahmida_ferdousi({super.key});

  @override
  Widget build(BuildContext context) {
    return DoctorIntro(
      doctor_image_path: "assets/images/Doctors Images/doctor8.png",
      doctor_experience: "11+",
      doctor_name: "Dr. Tahmida\nFerdousi",
      doctor_name_fontsize: 14,
      doctor_degree: "MBBS, FCPS (Pediatrics)",
      doctor_degree_fontsize: 10,
      doctor_type: "Child Diseases Specialist",
      doctor_type_container_width: 140,
      doctor_bill: 300,
      doctor_phone_call: "01623485195",
      doctor_video_call: "https://call.whatsapp.com/video/4TTXpaqkz2LuMiN7rPjYAw",
    );
  }
}
