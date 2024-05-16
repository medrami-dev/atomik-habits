import 'package:Atomic_Habits/widgets/about_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:url_launcher/url_launcher.dart';

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
          actions: [
            IconButton(
                icon: const Icon(Icons.email_outlined),
                onPressed: () {
                  Uri emailLaunchUri = Uri(
                    scheme: 'mailto',
                    path: 'contact@mohamedrami.me',
                  );
                  launchUrl(emailLaunchUri);
                })
          ],
          leading: IconButton(
              icon: const Icon(Icons.arrow_back_ios_new),
              onPressed: () {
                Navigator.pop(context);
              }),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Image.asset(
                    'assets/images/reading.png',
                    width: 200,
                    height: 200,
                  ),
                ),
                const SizedBox(height: 25),
                Animate(
                  onPlay: (controller) => controller.forward(),
                  effects: const [
                    FadeEffect(
                      duration: Duration(milliseconds: 800),
                      curve: Curves.easeIn,
                      delay: Duration(milliseconds: 200),
                    ),
                  ],
                  child: const AboutTile(
                      title: 'عن التطبيق',
                      height: 250,
                      content:
                          '“تطبيق العادات الذرية هو أداة بسيطة تم تصميمها لتقديم تجربة قراءة مريحة لكتاب “العادات الذرية”. يتميز التطبيق بخاصية حفظ موقع القراءة، التي تتيح لك العودة إلى آخر نقطة قراءة بشكل تلقائي، مما يجعل تجربة القراءة أكثر سلاسة. يعمل التطبيق بشكل فعال سواء كان الإنترنت متاحًا أم لا، مما يجعله الخيار المثالي للقراءة في أي وقت وفي أي مكان.'),
                ),
                const SizedBox(height: 10),
                const AboutTile(
                  height: 150,
                  title: 'عن الخصوصية',
                  content:
                      'نحن نحترم خصوصيتك ونحن لا نقوم بجمع أي معلومات شخصية عنك. جميع بيانات الخاصة باقراءة الكتب تخزن محليًا على جهازك ولا يتم مشاركتها مع أي شخص.',
                ).animate().fadeIn(
                      duration: const Duration(milliseconds: 800),
                      curve: Curves.easeIn,
                      delay: const Duration(milliseconds: 200),
                    ),
                const SizedBox(height: 10),
                const AboutTile(
                  height: 150,
                  title: 'عن المطور',
                  content:
                      'تم تطوير هذا التطبيق بواسطة محمد رامي مطور تطبيقات محترف ومهتم بتطوير تطبيقات الهواتف . يمكنك التواصل معي عبر البريد الإلكتروني',
                ),
              ],
            ),
          ),
        ));
  }
}
