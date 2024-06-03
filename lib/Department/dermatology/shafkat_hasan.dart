import 'package:flutter/material.dart';
import 'package:doctor_appoinment/Custom Widget/doctor_intro.dart';

class shafkat_hasan extends StatelessWidget {
  const shafkat_hasan({super.key});

  @override
  Widget build(BuildContext context) {
    return DoctorIntro(
      doctor_image_path: "assets/images/Doctors Images/doctor10.png",
      doctor_experience: "19+",
      doctor_name: "Dr. Shafkat Hasan",
      doctor_name_fontsize: 14,
      doctor_degree: "MBBS, DDV (Dermatology)",
      doctor_degree_fontsize: 10,
      doctor_type: "Dermatologist",
      doctor_type_container_width: 80,
      doctor_bill: 400,
      doctor_phone_call: "01623485195",
      doctor_video_call: "https://call.whatsapp.com/video/4TTXpaqkz2LuMiN7rPjYAw",
    );
  }
}
