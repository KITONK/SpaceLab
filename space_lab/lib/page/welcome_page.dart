import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:space_lab/widget/figure_widget.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff6f6f6),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xff8b84e2),
        leading: null,
      ),
      body: _body(context),
    );
  }
}

Widget _body(BuildContext context) {
  return Container(
    alignment: Alignment.center,
    child: Column(
      children: [
        figureWidget(figureText('MemoryBox','Твой голос всегда рядом'),),
        _bodyContent('Привет!', 'Мы рады видеть тебя здесь. Это приложение поможет записывать сказки и держать их в удобном месте не заполняя память на телефоне'),
        buttonNext(context),
      ],
    ),
  );
}

Widget _bodyContent(String str1, String str2) {
  return Center(
    child: Padding(
      padding: const EdgeInsets.only(left: 35, right: 35),
      child: Column(
        children: [
          SizedBox(
            height: 22.h,
          ),
          Text(
            str1,
            style: const TextStyle(
              fontSize: 24,
            ),
          ),
          SizedBox(
            height: 18.h,
          ),
          Text(
            str2,
            style: const TextStyle(
              fontSize: 16,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 34.h,
          ),
        ],
      ),
    ),
  );
}

Widget buttonNext(BuildContext context) {
  return ElevatedButton(
    onPressed: () => Navigator.of(context).pushReplacementNamed('/register'),
    style: ElevatedButton.styleFrom(
      primary: const Color(0xfff1b488),
      fixedSize: Size(309.w, 59.h),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(40),
      ),
    ),
    child: const Text(
      'Продолжить',
      style: TextStyle(
        fontSize: 18,
      ),
    ),
  );
}

Widget figureText(String str1, String str2) {
  return Column(children: [
    Text(
      str1,
      style: const TextStyle(
        fontSize: 48,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
    ),
    Padding(
      padding: const EdgeInsets.only(left: 107),
      child: Text(
        str2,
        style: const TextStyle(
          fontSize: 12.5,
          color: Colors.white,
        ),
      ),
    )
  ]);
}