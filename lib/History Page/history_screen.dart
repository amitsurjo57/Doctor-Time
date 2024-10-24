import 'package:doctor_appoinment/Database/db_history.dart';
import 'package:doctor_appoinment/Database/history_model.dart';
import 'package:doctor_appoinment/Database/history_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:provider/provider.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({super.key});

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  DbHistory? dbHistory = DbHistory();

  @override
  Widget build(BuildContext context) {
    final history = Provider.of<HistoryProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Appointment History"),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: FutureBuilder(
        future: history.getData(),
        builder: (context, AsyncSnapshot<List<AppointmentHistory>> snapshot) {
          if (snapshot.hasData) {
            return snapshot.data!.isEmpty
                ? const Center(
                    child: Text(
                      "No History",
                      style: TextStyle(fontSize: 20),
                    ),
                  )
                : ListView.separated(
                    padding: const EdgeInsets.only(
                      left: 10,
                      right: 10,
                      top: 20,
                      bottom: 20,
                    ),
                    separatorBuilder: (context, index) =>
                        const SizedBox(height: 30),
                    itemCount: snapshot.data!.length,
                    itemBuilder: (context, index) => Slidable(
                      endActionPane: ActionPane(
                        motion: const StretchMotion(),
                        children: [
                          SlidableAction(
                            backgroundColor: Colors.red,
                            icon: Icons.delete,
                            label: "Delete",
                            borderRadius: BorderRadius.circular(50),
                            onPressed: (context) {
                              setState(() {
                                dbHistory!.delete(snapshot.data![index].id!);
                              });
                            },
                          ),
                        ],
                      ),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                              blurRadius: 5,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                        child: ListTile(
                          leading: Image.asset(snapshot
                              .data![index].doctor_image_path
                              .toString()),
                          title: Text(
                            snapshot.data![index].doctor_name.toString(),
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 12.5),
                          ),
                          subtitle: Text(
                            snapshot.data![index].doctor_type.toString(),
                            style: const TextStyle(
                              color: Colors.grey,
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          trailing: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                snapshot.data![index].date.toString(),
                                style: const TextStyle(fontSize: 10),
                              ),
                              Text(
                                snapshot.data![index].time.toString(),
                                style: const TextStyle(fontSize: 10),
                              ),
                              const Spacer(),
                              Text(
                                snapshot.data![index].call_type.toString(),
                                style: TextStyle(
                                  fontSize: 12.5,
                                  fontWeight: FontWeight.bold,
                                  color: snapshot.data![index].call_type
                                              .toString() ==
                                          'Phone Call'
                                      ? Colors.green
                                      : Colors.blue,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
          }
          return const Text("");
        },
      ),
    );
  }
}
