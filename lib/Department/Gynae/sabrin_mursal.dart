import 'package:flutter/material.dart';
import 'package:doctor_appoinment/Custom Widget/doctor_intro.dart';

class sabrin_mursal extends StatelessWidget {
  const sabrin_mursal({super.key});

  @override
  Widget build(BuildContext context) {
    return DoctorIntro(
      doctor_image_path: "assets/images/Doctors Images/doctor3.png",
      doctor_experience: "9+",
      doctor_name: "Dr. Sabrin Mursal",
      doctor_name_fontsize: 13,
      doctor_degree: "MBBS, MCPS (Gynae & Obs),\nMRCOG (Gynae & Obs)(UK),\nFCPS (Gynae & Obs)",
      doctor_type: "Gynecologist & Obstetrician",
      doctor_type_container_width: 150,
      doctor_bill: 600,
      doctor_phone_call: "01623485195",
      doctor_video_call: "https://call.whatsapp.com/video/4TTXpaqkz2LuMiN7rPjYAw",
    );
  }
}
