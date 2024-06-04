import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    const switchValue = false;

    return const Column(
      children: [
        Text('코이웨어로고'),
        Text('User ID'),
        TextField(),
        Text('User Password'),
        TextField(),
        Row(
          children: [Switch(value: switchValue, onChanged: (){} )],
        )
      ],
    );
  }
}
