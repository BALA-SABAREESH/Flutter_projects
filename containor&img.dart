import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.red,
              image: DecorationImage(
                image: NetworkImage(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTWPU1_M1RjoqmAWaUhBVVwGlRJw0XQSxeIkQ&s"),
                fit: BoxFit.cover,
              ),
              boxShadow: [
                BoxShadow(
                  color: Color(0xfffe0404),
                  offset: Offset(5.1, 5.6),
                  blurRadius: 8.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
