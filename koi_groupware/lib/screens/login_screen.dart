import 'package:flutter/material.dart';
import 'package:webtoon_app/models/user_model.dart';
import 'package:webtoon_app/screens/mainboard_screen.dart';
import 'package:webtoon_app/services/api_service.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    bool switchValue = false;

    return Scaffold(
      appBar: AppBar(
        title: const Text('asdf'),
      ),
      body: Column(
        children: [
          const Text('코이웨어로고'),
          const Text('User ID'),
          const TextField(),
          const Text('User Password'),
          const TextField(),
          Row(
            children: [
              Switch(
                value: switchValue,
                onChanged: (bool value) {
                  setState(() {
                    switchValue = !value;
                  });
                },
              ),
              const Text('로그인 상태 유지'),
            ],
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      const MainboardScreen(id: 'koi.dhjang', pw: 'koiware123'),
                ),
              );
            },
            child: const Text('Sign in'),
          ),
          TextButton(
            onPressed: () {},
            child: const Text('안면인식 로그인'),
          ),
          TextButton(
            onPressed: () {},
            child: const Text('코이웨어 홈페이지'),
          ),
        ],
      ),
    );
  }
}
