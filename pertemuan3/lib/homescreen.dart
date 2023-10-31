import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pertemuan3/formulir_screen.dart';
import 'package:pertemuan3/theme.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pertemuan 3"),
        centerTitle: true,
        backgroundColor: Colors.lightBlue,
      ),
      body: Column(
        children: [
          //Elevated Button
          ElevatedButton(
              // style: ElevatedButton.styleFrom(
              // backgroundColor: Colors.amber, padding: EdgeInsets.all(30)),
              onPressed: () {
                Navigator.pushNamed(context, '/formulir');
              },
              child: const Text("Elevated Button")),
          const SizedBox(
            height: 10,
          ),
          const ElevatedButton(onPressed: null, child: Text("Disable Button")),

          //Outlined Button
          OutlinedButton(
              style: OutlinedButton.styleFrom(
                  side: const BorderSide(color: Colors.amber)),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FormulirScreen()));
              },
              child: const Text(
                "Submit",
                style: TextStyle(color: Colors.amber),
              )),

          //Text Button
          TextButton(onPressed: () {}, child: const Text("Text Button")),

          Text("INCUBIX Pertemuan 3",
              style: primaryText.copyWith(fontSize: 30, color: Colors.green)),
          Text(
            "Incubix Pertemuan 3",
            style:
                GoogleFonts.comicNeue(textStyle: const TextStyle(fontSize: 30)),
          ),
        ],
      ),
    );
  }
}
