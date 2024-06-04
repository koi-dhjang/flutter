import 'package:flutter/material.dart';
import 'package:webtoon_app/services/api_service.dart';

void main() {
  // ApiService().getNoticeList();
  // ApiService().getCostDetail();
  ApiService().doLogin();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Koi GroupWare Demo',
      home: Text('asdf'),
    );
  }
}
