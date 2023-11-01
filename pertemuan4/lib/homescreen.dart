import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  DateTime dueDate = DateTime.now();
  final currentDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Container(
        width: MediaQuery.of(context).size.width * 0.7,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(30, 70, 30, 30),
          child: Column(
            children: [
              const Text("Pertemuan 1"),
              const SizedBox(
                height: 30,
              ),
              const Text("Pertemuan 2"),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amber,
                  ),
                  onPressed: () {},
                  child: const Text("Login"))
            ],
          ),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Date"),
                    TextButton(
                        onPressed: () async {
                          final selectDate = await showDatePicker(
                              context: context,
                              initialDate: currentDate,
                              firstDate: DateTime(2000),
                              lastDate: DateTime(currentDate.year + 5));
                          setState(() {
                            if (selectDate != null) {
                              dueDate = selectDate;
                            }
                          });
                        },
                        child: Text("Select"))
                  ],
                ),
                Text(DateFormat('dd.MM.yy').format(dueDate)),
              ],
            ),
          )
        ],
      ),
    );
  }
}
