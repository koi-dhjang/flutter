import 'package:flutter/material.dart';
import 'package:webtoon_app/screens/detail_screen.dart';

class WebtoonWidget extends StatelessWidget {
  final String title, thumb, id;

  const WebtoonWidget({
    super.key,
    required this.title,
    required this.thumb,
    required this.id,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailScreen(
              title: title,
              thumb: thumb,
              id: id,
            ),
            fullscreenDialog: true, // 아래에서 올라오도록 수정
          ),
        );
      },
      child: Column(
        children: [
          // Image.network(thumb), // LG사내망에서 접근불가
          Container(
            clipBehavior: Clip.hardEdge, // 이건 다시봐야할듯?
            decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 15,
                    offset: const Offset(10, 10),
                    color: Colors.black.withOpacity(0.3),
                  )
                ]),
            width: 250,
            height: 350,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            title,
            style: const TextStyle(
              fontSize: 22,
            ),
          ),
        ],
      ),
    );
  }
}
