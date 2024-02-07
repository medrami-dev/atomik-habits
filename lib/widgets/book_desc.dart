import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BookDesc extends StatelessWidget {
  const BookDesc({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15),
      alignment: Alignment.center,
      child: Text(
          """كتاب العادات الذرية pdf تأليف جيمس كلير .. أيًا كانت أهدافك فإن كتاب "العادات الذرية" يقدم لك إطار عمل من أجل تطوير مهاراتك في كل يوم. جيمس كلير واحد من أبرز الخبراء في مجال اكتساب العادات، يوضح لنا في كتابه هذا استراتيجيات عملية تعلمنا كيف نستطيع اكتساب عادات جيدة، وكيف نتخلص من القديمة السلبية، ويشرح لنا طريقة إدارة وإتقان أفعالنا اليومية البسيطة التي نستطيع من خلالها تحقيق نتائج مذهلة.
يعلمنا هذا الكتاب:
كيف نخلق الوقت من أجل اكتساب عادات جديدة
كيف نتخلص من نقص الحافز، ونتمتع بقوة الإرادة
كيف نغير بيئتنا المحيطة لتحقيق نتائج إيجابية في الحياة""",
          textAlign: TextAlign.end,
          style:
              GoogleFonts.tajawal(fontSize: 20, fontWeight: FontWeight.w500)),
    );
  }
}
