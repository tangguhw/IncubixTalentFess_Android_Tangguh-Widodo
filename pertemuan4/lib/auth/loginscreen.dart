import 'package:flutter/material.dart';
import 'package:pertemuan4/auth/registerscreen.dart';
import 'package:pertemuan4/homescreen_latihan.dart';
import 'package:pertemuan4/widget/button_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset("assets/Logo.png"),
              const Text(
                "Welcome Back, ",
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
              const Text(
                "Sign in to continue",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              TextFormField(
                decoration: const InputDecoration(
                    label: Text("Nama: "), hintText: "Contoh: Tangguh"),
              ),
              TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                    label: Text("Password: "), hintText: "Masukkan Password"),
              ),
              ButtonWidget(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomeScreenLat()));
                  },
                  title: "Login")
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(30),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Text("Belum punya akun? "),
          TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RegisterScreen()));
              },
              child: const Text("Buat akun"))
        ]),
      ),
    );
  }
}
