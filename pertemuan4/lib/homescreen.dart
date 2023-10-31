import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
      body: ListView(),
    );
  }
}
