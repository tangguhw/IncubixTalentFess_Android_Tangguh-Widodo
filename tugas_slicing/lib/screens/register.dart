import 'package:flutter/material.dart';
import 'package:tugas_slicing/core/api_client.dart';
import 'package:tugas_slicing/screens/login_screen.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  final ApiClient apiClient = ApiClient(); // Menggunakan instance ApiClient

  Future<void> registerUser() async {
    final String name = nameController.text;
    final String email = emailController.text;
    final String password = passwordController.text;

    final userData = {
      'name': name,
      'email': email,
      'password': password,
    };

    try {
      final response = await apiClient.registerUser(userData);

      if (response.statusCode == 201) {
        final responseData = response.data;
        final message = responseData['message'];

        // Tampilkan pesan sukses atau navigasi ke layar lain
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text('Success'),
              content: Text(message),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text('OK'),
                ),
              ],
            );
          },
        );
      } else {
        final responseData = response.data;
        final message = responseData['message'];

        // Tampilkan pesan kesalahan
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('Error'),
              content: Text(message),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('OK'),
                ),
              ],
            );
          },
        );
      }
    } catch (error) {
      // Handle error (misalnya masalah jaringan)
      print('Error: $error');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(labelText: 'Name'),
            ),
            TextField(
              controller: emailController,
              decoration: InputDecoration(labelText: 'Email'),
            ),
            TextField(
              controller: passwordController,
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            ElevatedButton(
              onPressed: registerUser,
              child: Text('Register'),
            ),
            SizedBox(height: 16), // Spasi vertikal
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Sudah punya akun?"),
                InkWell(
                  onTap: () {
                    // Navigasi ke layar LoginScreen saat teks "Login" ditekan
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginScreen()),
                    );
                  },
                  child: Text(
                    "Login",
                    style: TextStyle(
                      color: Colors.blue, // Warna tautan
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
