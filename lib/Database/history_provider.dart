import 'package:flutter/material.dart';
import 'package:doctor_appoinment/Database/db_history.dart';
import 'history_model.dart';

class HistoryProvider with ChangeNotifier {
  DbHistory db = DbHistory();
  late Future<List<AppointmentHistory>> _history;

  Future<List<AppointmentHistory>> get history => _history;

  Future<List<AppointmentHistory>> getData() async {
    _history = db.getHistoryList();
    return _history;
  }
}
