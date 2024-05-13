import 'package:Atomic_Habits/Pages/about_app.dart';
import 'package:Atomic_Habits/Pages/about_dev.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class CustomDrawerScreen extends StatelessWidget {
  const CustomDrawerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: null,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back_ios_new),
              onPressed: () {
                Navigator.pop(context);
              },
            )),
        body: Column(
          children: [
            Directionality(
              textDirection: TextDirection.rtl,
              child: ListTile(
                title: const Text("عن التطبيق",
                    style: TextStyle(fontSize: 18, color: Colors.black)),
                leading: const Icon(Icons.info_outline),
                onTap: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          type: PageTransitionType.fade,
                          duration: const Duration(milliseconds: 300),
                          child: const AboutApp()));
                },
              ),
            ),
            Directionality(
              textDirection: TextDirection.rtl,
              child: ListTile(
                title: const Text("حول المطور",
                    style: TextStyle(fontSize: 18, color: Colors.black)),
                leading: const Icon(Icons.person),
                onTap: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          type: PageTransitionType.fade,
                          duration: const Duration(milliseconds: 300),
                          child: const AboutDev()));
                },
              ),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ));
  }
}
