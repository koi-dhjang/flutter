import 'package:flutter/material.dart';
import 'package:webtoon_app/screens/login_screen.dart';
import 'package:webtoon_app/services/api_service.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Koi GroupWare Demo',
      home: LoginScreen(),
    );
  }
}
