import 'package:flutter/material.dart';

class AboutTile extends StatelessWidget {
  const AboutTile({
    super.key,
    required this.title,
    required this.content,
  });
  final String title;
  final String content;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(10),
        width: double.infinity,
        decoration: BoxDecoration(
          color: const Color(0xff21ac94),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Column(
          children: [
            Text(
              title,
              style: const TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                  fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 10),
            Text(
              content,
              style: const TextStyle(fontSize: 16, color: Colors.white),
              textAlign: TextAlign.end,
            ),
          ],
        ));
  }
}
