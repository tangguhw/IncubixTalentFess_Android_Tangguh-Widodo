import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        color: Colors.green,
        width: double.infinity,
        child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
          children: [ 
            const Text("Pertemuan 2"),
          Container(
            width: 100,
            height: 100,
            color: Colors.amber,
          ),
          const SizedBox(
            height: 28,
          ),
          const Text(
            "INCUBIX",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const Text(
            "1",
            style: TextStyle(fontSize: 20),
          )
          ]
        ]),
        
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.abc,
                size: 100,
              ),
              Icon(Icons.person)
            ],
          ),
        ],
      ),
    ));
  }
}
