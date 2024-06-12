import 'package:flutter/material.dart';

class TextPlate extends StatelessWidget {
  final String text;

  const TextPlate({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/images/login-bg.jpg'),
          ),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
