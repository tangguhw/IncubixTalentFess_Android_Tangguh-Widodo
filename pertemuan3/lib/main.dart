import 'package:flutter/material.dart';
import 'package:pertemuan3/formulir_screen.dart';
import 'package:pertemuan3/homescreen.dart';
// import 'package:pertemuan3/homescreen.dart';

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
      initialRoute: '/home',
      routes: {
        '/home': (context) => HomeScreen(),
        'formulir': (context) => FormulirScreen()
      },
    );
  }
}
