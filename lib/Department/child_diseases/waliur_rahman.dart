import 'package:flutter/material.dart';
import 'package:doctor_appoinment/Custom Widget/doctor_intro.dart';

class waliur_rahman extends StatelessWidget {
  const waliur_rahman({super.key});

  @override
  Widget build(BuildContext context) {
    return DoctorIntro(
      doctor_image_path: "assets/images/Doctors Images/doctor9.png",
      doctor_experience: "14+",
      doctor_name: "Dr. Md. Waliur Rahman",
      doctor_name_fontsize: 12,
      doctor_degree: "MBBS, FCPS (Pediatrics),\nDCH (Pediatrics)",
      doctor_degree_fontsize: 10,
      doctor_type: "Child Diseases Specialist",
      doctor_type_container_width: 140,
      doctor_bill: 520,
      doctor_phone_call: "01623485195",
      doctor_video_call: "https://call.whatsapp.com/video/4TTXpaqkz2LuMiN7rPjYAw",
    );
  }
}

/*Container(
      width: 300,
      height: 230,
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
        boxShadow: const [
          BoxShadow(
            blurRadius: 10,
            blurStyle: BlurStyle.solid,
            color: Colors.black38,
          )
        ],
      ),
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 100,
                width: 100,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image:
                    AssetImage("assets/images/Doctors Images/doctor9.png"),
                  ),
                ),
              ),
              const Column(
                children: [
                  Text(
                    "14+ years",
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "experience",
                    style: TextStyle(fontSize: 13),
                  )
                ],
              ),
            ],
          ),
          const SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Dr. Md. Waliur Rahman",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
              const Text("MBBS, FCPS (Pediatrics),\nDCH (Pediatrics),",
                  style: TextStyle(fontSize: 10)),

              const SizedBox(height: 10),
              FittedBox(
                fit: BoxFit.scaleDown,
                child: Container(
                  width: 140,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.blue,
                  ),
                  child: const Center(
                    child: Text(
                      "Child Diseases Specialist",
                      style: TextStyle(fontSize: 10, color: Colors.white),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              const Text(
                "520 BDT",
                style: TextStyle(color: Colors.blue),
              ),
              const SizedBox(
                height: 5,
              ),
              InkWell(
                onTap: () {
                  launchUrl(
                    Uri(scheme: "tel", path: "+8809999999999"),
                  );
                },
                child: Container(
                  color: Colors.lightGreen,
                  width: 110,
                  height: 30,
                  child: const FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(Icons.phone, color: Colors.white),
                          SizedBox(width: 2),
                          Text(
                            "Call now",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 5),
              InkWell(
                onTap: (){
                  launchUrl(Uri.parse("https://call.whatsapp.com/video/4TTXpaqkz2LuMiN7rPjYAw"));
                },
                child: Container(
                  color: Colors.blue.shade300,
                  width: 110,
                  height: 30,
                  child: const FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(Icons.video_call, color: Colors.white),
                          SizedBox(width: 2),
                          Text(
                            "Video Call",
                            style: TextStyle(fontSize: 13,color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );*/
