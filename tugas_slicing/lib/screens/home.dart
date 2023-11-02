import 'package:flutter/material.dart';
import 'package:tugas_slicing/screens/login_screen.dart';

class HomeScreen extends StatelessWidget {
  final String? username; // Make the username nullable
  final String? email; // Make the email nullable

  const HomeScreen({required this.username, required this.email});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Welcome, ${username ?? 'Unknown'}'),
            Text('Email: ${email ?? 'Unknown'}'),
            ElevatedButton(
              onPressed: () {
                // Navigate to the LoginScreen when the "Logout" button is pressed
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                );
              },
              child: const Text('Logout'),
            ),
          ],
        ),
      ),
    );
  }
}
