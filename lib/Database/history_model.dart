class AppointmentHistory {
  late final int? id;
  final String? doctor_image_path;
  final String? doctor_name;
  final String? doctor_type;
  final String? date;
  final String? time;
  final String? call_type;

  AppointmentHistory({
    required this.id,
    required this.doctor_image_path,
    required this.doctor_name,
    required this.doctor_type,
    required this.date,
    required this.time,
    required this.call_type,
  });

  AppointmentHistory.fromMap(Map<dynamic, dynamic> res)
      : id = res['id'],
        doctor_image_path = res['doctor_image_path'],
        doctor_name = res['doctor_name'],
        doctor_type = res['doctor_type'],
        date = res['date'],
        time = res['time'],
        call_type = res['call_type'];

  Map<String, Object?> toMap() {
    return {
      'id': id,
      'doctor_image_path': doctor_image_path,
      'doctor_name': doctor_name,
      'doctor_type': doctor_type,
      'date': date,
      'time': time,
      'call_type' : call_type,
    };
  }
}
