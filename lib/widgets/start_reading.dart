import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartReadingButton extends StatelessWidget {
  const StartReadingButton({super.key});

  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/readingPage');
      },
      child: Container(
          alignment: Alignment.center,
          height: deviceHeight * 0.08,
          width: deviceWidth * 0.4,
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 199, 169, 49),
              borderRadius: BorderRadius.circular(20)),
          child: Row(
            textDirection: TextDirection.rtl,
            children: [
              const SizedBox(width: 20),
              Text(
                "ابدأ القراءة",
                style: GoogleFonts.tajawal(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(width: 10),
              const Icon(
                Icons.arrow_back_ios_rounded,
                color: Colors.white,
              ),
              SizedBox(width: deviceWidth * 0.05),
            ],
          )),
    );
  }
}
