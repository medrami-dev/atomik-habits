import 'package:flutter/material.dart';

class AboutTile extends StatelessWidget {
  const AboutTile(
      {super.key,
      required this.title,
      required this.content,
      required this.height});
  final String title;
  final String content;
  final double height;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: height,
        decoration: BoxDecoration(
          color: const Color(0xff21ac94),
          borderRadius: BorderRadius.circular(5),
        ),
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            Text(
              textAlign: TextAlign.end,
              title,
              style: const TextStyle(
                  fontSize: 22,
                  color: Colors.black,
                  fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 10),
            Text(
              content,
              style: const TextStyle(fontSize: 16, color: Colors.black),
              textAlign: TextAlign.end,
            ),
          ],
        ));
  }
}
