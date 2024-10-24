class Doctor {
  final String? doctor_image_path;
  final String? doctor_name;
  final String? doctor_type;
  final String? doctor_degree;
  final String? hospital;
  final String? experience;
  final double? doctor_name_fonsize;
  final double? doctor_type_fontsize;
  final double? doctor_degree_fontsize;

  Doctor({
    required this.doctor_image_path,
    required this.doctor_name,
    required this.doctor_type,
    required this.doctor_degree,
    this.hospital,
    this.experience,
    this.doctor_name_fonsize,
    this.doctor_type_fontsize,
    this.doctor_degree_fontsize,
  });
}

double name_font = 12.0;
double type_font = 7.0;
double degree_font = 9.0;

final allDoctors = [
  Doctor(
    doctor_image_path: "assets/images/Doctors Images/doctor2.png",
    doctor_name: "Dr. Bishojit Mondol",
    doctor_type: "Cardiologist",
    doctor_degree: "MBBS, MD (Cardiology)",
    hospital: "Dhaka Medical College Hospital",
    experience: "20+ years",
    doctor_name_fonsize: name_font,
    doctor_degree_fontsize: degree_font,
    doctor_type_fontsize: type_font,
  ),
  Doctor(
    doctor_image_path: "assets/images/Doctors Images/doctor4.png",
    doctor_name: "Dr. Rahat Rahman",
    doctor_type: "Dentistry",
    doctor_degree: "BDS, MPH (Dentistry)",
    hospital: "Mugdha Medical College Hospital",
    experience: "20+ years",
    doctor_name_fonsize: name_font,
    doctor_degree_fontsize: degree_font,
    doctor_type_fontsize: type_font,
  ),
  Doctor(
    doctor_image_path: "assets/images/Doctors Images/doctor5.png",
    doctor_name: "Dr. Jasmin Ara Zaman",
    doctor_type: "Gynecologist & Obstetrician",
    doctor_degree: "MBBS, FCPS (Gynae & Obs)",
    hospital: "Khulna Medical College Hospital",
    experience: "17+ years",
    doctor_name_fonsize: name_font,
    doctor_degree_fontsize: degree_font,
    doctor_type_fontsize: type_font,
  ),
  Doctor(
    doctor_image_path: "assets/images/Doctors Images/doctor4.png",
    doctor_name: "Dr. Repon Saha",
    doctor_type: "Nephrologist",
    doctor_degree: "MBBS, MD (Nephrology)",
    hospital: "Mymensingh Medical College\nHospital",
    experience: "10+ years",
    doctor_name_fonsize: name_font,
    doctor_degree_fontsize: degree_font,
    doctor_type_fontsize: type_font,
  ),
  Doctor(
    doctor_image_path: "assets/images/Doctors Images/doctor4.png",
    doctor_name: "Dr. Alamgir Hossain",
    doctor_type: "Neurologist",
    doctor_degree: "MBBS, MD (Neurology)",
    hospital: "Dhaka Medical College Hospital",
    experience: "10+ years",
    doctor_name_fonsize: name_font,
    doctor_degree_fontsize: degree_font,
    doctor_type_fontsize: type_font,
  ),
  Doctor(
    doctor_image_path: "assets/images/Doctors Images/doctor5.png",
    doctor_name: "Dr. Maria Akter",
    doctor_type: "Orthopedist",
    doctor_degree: "MBBS, MS (Orthopedics)",
    hospital: "Sylhet Medical College Hospital",
    experience: "10+ years",
    doctor_name_fonsize: name_font,
    doctor_degree_fontsize: degree_font,
    doctor_type_fontsize: type_font,
  ),
];
