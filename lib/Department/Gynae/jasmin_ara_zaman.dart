import 'package:flutter/material.dart';
import 'package:doctor_appoinment/Custom Widget/doctor_intro.dart';

class jasmin_ara_zaman extends StatelessWidget {
  const jasmin_ara_zaman({super.key});

  @override
  Widget build(BuildContext context) {
    return DoctorIntro(
      doctor_image_path: "assets/images/Doctors Images/doctor5.png",
      doctor_experience: "17+",
      doctor_name: "Dr. Jasmin Ara Zaman",
      doctor_name_fontsize: 13,
      doctor_degree: "MBBS, FCPS (Gynae & Obs)",
      doctor_type: "Gynecologist & Obstetrician",
      doctor_type_container_width: 150,
      doctor_bill: 550,
      doctor_phone_call: "01623485195",
      doctor_video_call: "https://call.whatsapp.com/video/4TTXpaqkz2LuMiN7rPjYAw",
    );
  }
}