import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  String title;
  ButtonWidget({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(backgroundColor: Colors.amber),
      onPressed: () {},
      child: Text(title),
    );
  }
}
