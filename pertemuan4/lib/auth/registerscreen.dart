import 'package:flutter/material.dart';
import 'package:pertemuan4/auth/loginscreen.dart';
import 'package:pertemuan4/widget/button_widget.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final namaEcd = TextEditingController();
  final emailEcd = TextEditingController();
  final noHpEcd = TextEditingController();
  final passEcd = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Buat akun",
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
              const Text(
                "Sign up",
                style: TextStyle(color: Colors.grey),
              ),
              TextFormField(
                controller: namaEcd,
                decoration: const InputDecoration(
                    label: Text("Nama: "), hintText: "Contoh: Tangguh"),
              ),
              TextFormField(
                controller: emailEcd,
                decoration: const InputDecoration(
                    label: Text("Email: "),
                    hintText: "Contoh: Tangguh@gmail.com"),
              ),
              TextFormField(
                controller: noHpEcd,
                decoration: const InputDecoration(
                    label: Text("Nomor HP: "),
                    hintText: "Contoh: 081228279810"),
              ),
              TextFormField(
                controller: passEcd,
                obscureText: true,
                decoration: const InputDecoration(
                    label: Text("Password: "),
                    hintText: "Contoh: Masukkan Password"),
              ),
              ButtonWidget(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginScreen()));
                  },
                  title: "Register")
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(30),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Text("Sudah punya akun? "),
          TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LoginScreen()));
              },
              child: const Text("Login"))
        ]),
      ),
    );
  }
}
