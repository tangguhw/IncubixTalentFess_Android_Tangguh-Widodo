import 'package:flutter/material.dart';
import 'package:pertemuan6/model/alquran_model.dart';
import 'package:pertemuan6/service/alquran_service.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int id = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Center(
            child: ElevatedButton(
                onPressed: () {
                  getAlquran(1);
                },
                child: const Text("Test API")),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 500,
            child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return TextButton(
                      onPressed: () {
                        setState(() {
                          id = index + 1;
                        });
                      },
                      child: Text("Surat ke - ${index + 1}"));
                }),
          ),
          FutureBuilder<AlquranModel>(
              future: getAlquran(id),
              builder: ((context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator());
                } else if (snapshot.hasError) {
                  return Text(snapshot.error.toString());
                } else if (!snapshot.hasData) {
                  return const Text("Tidak ada data");
                } else {
                  AlquranModel? alquranData = snapshot.data;
                  return Column(
                    children: [
                      Text(alquranData?.nama ?? ""),
                      Text(alquranData?.namaLatin ?? ""),
                      Text("Jumlah ayat = ${alquranData?.jumlahAyat} ayat"),
                      Text(alquranData?.arti ?? ""),
                    ],
                  );
                }
              }))
        ],
      ),
    );
  }
}
