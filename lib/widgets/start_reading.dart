import 'package:flutter/material.dart';

class StartReadingButton extends StatefulWidget {
  const StartReadingButton({super.key});

  @override
  State<StartReadingButton> createState() => _StartReadingButtonState();
}

class _StartReadingButtonState extends State<StartReadingButton> {
  @override
  initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, "/readingPage");
      },
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(15),
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Color(0xff21ac94),
        ),
        child: const Text(
          "ابدأ القراءة",
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
    );
  }
}
