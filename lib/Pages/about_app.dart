import 'package:flutter/material.dart';

class AboutApp extends StatelessWidget {
  const AboutApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'عن التطبيق',
          ),
          leading: IconButton(
              icon: const Icon(Icons.arrow_back_ios_new),
              onPressed: () {
                Navigator.pop(context);
              }),
        ),
        body: const Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                textAlign: TextAlign.end,
                'التطبيق',
                style: TextStyle(
                    fontSize: 23,
                    color: Colors.black,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 10),
              Text(
                'كتاب العادات الذرية هو تطبيق يساعدك على تتبع عاداتك وتحقيق أهدافك والبقاء متحفزًا.',
                style: TextStyle(fontSize: 16, color: Colors.black),
                textAlign: TextAlign.end,
              ),
              SizedBox(height: 10),
              Text(
                textAlign: TextAlign.end,
                'الخصوصية',
                style: TextStyle(
                    fontSize: 23,
                    color: Colors.black,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 10),
              Text(
                'نحن نحترم خصوصيتك ونحن لا نقوم بجمع أي معلومات شخصية عنك. يتم استخدام الإعلانات لتمويل التطبيق. جميع بيانات الخاصة باقراءة الكتب تخزن محليًا على جهازك ولا يتم مشاركتها مع أي شخص.',
                style: TextStyle(fontSize: 16, color: Colors.black),
                textAlign: TextAlign.end,
              ),
            ],
          ),
        ));
  }
}
