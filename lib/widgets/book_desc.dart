import 'package:flutter/material.dart';

class BookDesc extends StatelessWidget {
  const BookDesc({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15),
      padding: const EdgeInsets.all(10),
      alignment: Alignment.center,
      child: const Text(
        """أيًا كانت أهدافك فإن كتاب "العادات الذرية" يقدم لك إطار عمل من أجل تطوير مهاراتك في كل يوم. جيمس كلير واحد من أبرز الخبراء في مجال اكتساب العادات، يوضح لنا في كتابه هذا استراتيجيات عملية تعلمنا كيف نستطيع اكتساب عادات جيدة، وكيف نتخلص من القديمة السلبية، ويشرح لنا طريقة إدارة وإتقان أفعالنا اليومية البسيطة التي نستطيع من خلالها تحقيق نتائج مذهلة.
يعلمنا هذا الكتاب:
كيف نخلق الوقت من أجل اكتساب عادات جديدة
كيف نتخلص من نقص الحافز، ونتمتع بقوة الإرادة
كيف نغير بيئتنا المحيطة لتحقيق نتائج إيجابية في الحياة""",
        textAlign: TextAlign.center,
        style: TextStyle(
            color: Color.fromARGB(255, 33, 33, 33), fontSize: 15, height: 1.5),
      ),
    );
  }
}
