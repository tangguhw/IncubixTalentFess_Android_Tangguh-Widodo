import 'package:flutter/material.dart';

List listName = ["Buah", "Sayur", "Makanan ringan", "Minuman"];

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String dropdownValue = listName.first;
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Screen"),
      ),
      body: ListView(children: [
        DropdownButton(
            value: dropdownValue,
            items: listName
                .map((value) =>
                    DropdownMenuItem(value: value, child: Text(value)))
                .toList(),
            onChanged: (value) {
              setState(() {
                dropdownValue = value.toString();
              });
            }),
        Checkbox(
            value: isChecked,
            onChanged: (bool? value) {
              setState(() {
                isChecked = value!;
                print(isChecked);
              });
            })
      ]),
    );
  }
}
