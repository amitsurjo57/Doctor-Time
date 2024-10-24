import 'package:flutter/material.dart';
import 'package:doctor_appoinment/Custom Widget/doctor_intro.dart';

class shafayet_hossain extends StatelessWidget {
  const shafayet_hossain({super.key});

  @override
  Widget build(BuildContext context) {
    return DoctorIntro(
      doctor_image_path: "assets/images/Doctors Images/doctor1.png",
      doctor_experience: "10+",
      doctor_name: "Dr. Shafayet Hossain\nMir",
      doctor_name_fontsize: 13,
      doctor_degree: "MBBS, BCS (Health)",
      doctor_degree_fontsize: 10,
      doctor_type: "Neurologist",
      doctor_bill: 1200,
      doctor_phone_call: "01623485195",
      doctor_video_call: "https://call.whatsapp.com/video/4TTXpaqkz2LuMiN7rPjYAw",
    );
  }
}