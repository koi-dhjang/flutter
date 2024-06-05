import 'package:flutter/material.dart';
import 'package:webtoon_app/models/user_model.dart';
import 'package:webtoon_app/services/api_service.dart';

class MainboardScreen extends StatefulWidget {
  final String id, pw;

  const MainboardScreen({super.key, required this.id, required this.pw});

  @override
  State<MainboardScreen> createState() => _MainboardScreenState();
}

class _MainboardScreenState extends State<MainboardScreen> {
  @override
  void initState() {
    super.initState();
    user = ApiService().getUserInfo(widget.id, widget.pw);
  }

  late Future<UserModel> user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('메인화면'),
      ),
      body: FutureBuilder(
        future: user,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Column(
              children: [
                Text(snapshot.data!.empInfo['EMP_NM']),
                Text(snapshot.data!.empInfo['EMP_EMAIL']),
              ],
            );
          }
          return const Text('아직');
        },
      ),
    );
  }
}
