import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ButtonWidget extends StatelessWidget {
  String title;
  Function() onPressed;
  ButtonWidget({required this.title, required this.onPressed, super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(backgroundColor: Colors.amber),
      onPressed: onPressed,
      child: Text(title),
    );
  }
}
