import 'package:flutter/material.dart';

class AboutApp extends StatelessWidget {
  const AboutApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'عن التطبيق',
          ),
          leading: IconButton(
              icon: const Icon(Icons.arrow_back_ios_new),
              onPressed: () {
                Navigator.pop(context);
              }),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const SizedBox(height: 2),
              Align(
                alignment: Alignment.center,
                child: Image.asset(
                  'assets/images/reading.png',
                  width: 200,
                  height: 200,
                ),
              ),
              const SizedBox(height: 25),
              const Text(
                textAlign: TextAlign.end,
                'عن التطبيق',
                style: TextStyle(
                    fontSize: 22,
                    color: Colors.black,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 10),
              const Text(
                '“تطبيق العادات الذرية هو أداة بسيطة تم تصميمها لتقديم تجربة قراءة مريحة لكتاب “العادات الذرية”. يتميز التطبيق بخاصية حفظ موقع القراءة، التي تتيح لك العودة إلى آخر نقطة قراءة بشكل تلقائي، مما يجعل تجربة القراءة أكثر سلاسة. يعمل التطبيق بشكل فعال سواء كان الإنترنت متاحًا أم لا، مما يجعله الخيار المثالي للقراءة في أي وقت وفي أي مكان.',
                style: TextStyle(fontSize: 16, color: Colors.black),
                textAlign: TextAlign.end,
              ),
              const SizedBox(height: 10),
              const Text(
                textAlign: TextAlign.end,
                'عن الخصوصية',
                style: TextStyle(
                    fontSize: 22,
                    color: Colors.black,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 10),
              const Text(
                'نحن نحترم خصوصيتك ونحن لا نقوم بجمع أي معلومات شخصية عنك. جميع بيانات الخاصة باقراءة الكتب تخزن محليًا على جهازك ولا يتم مشاركتها مع أي شخص.',
                style: TextStyle(fontSize: 16, color: Colors.black),
                textAlign: TextAlign.end,
              ),
              const SizedBox(height: 50),
            ],
          ),
        ));
  }
}
