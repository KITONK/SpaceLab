import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:space_lab/page/welcome_page.dart';

import '../widget/figure_widget.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff6f6f6),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xff8b84e2),
      ),
      body: _body(context),
    );
  }
}

Widget _body(BuildContext context) {
  return ListView(
    children: [
      Column(
        children: [
          figureWidget(figureText('Регистрация', ''),),
          _bodyContent(context),
        ],
      ),
    ],
  );
}

Widget _bodyContent(BuildContext context) {
  return Column(
    children: [
      SizedBox(
        height: 6.sp,
      ),
      const Text(
        'Введи номер телефона',
        style: TextStyle(fontSize: 16),
      ),
      SizedBox(
        height: 20.sp,
      ),
      phoneField(),
      SizedBox(
        height: 81.sp,
      ),
      buttonNext(context),
      SizedBox(
        height: 4.sp,
      ),
      TextButton(
        onPressed: () => Navigator.pushReplacementNamed(context, '/mainPage'),
        child: const Text(
          'Позже',
          style: TextStyle(fontSize: 24, color: Colors.black),
        ),
      ),
      SizedBox(
        height: 9.sp,
      ),
      dialogCard(),
    ],
  );
}

Widget phoneField() {
  return Container(
    width: 309.w,
    height: 59.h,
    decoration: BoxDecoration(
      color: const Color(0xfff6f6f6),
      borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
          bottomLeft: Radius.circular(40),
          bottomRight: Radius.circular(40)
      ),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 1,
          blurRadius: 7,
          offset: const Offset(0, 1), // changes position of shadow
        ),
      ],
    ),
    child: TextField(
      onTap: () {},
      maxLines: 1,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(40),
        ),
        border: InputBorder.none,
      ),
    ),
  );
}

Widget dialogCard() {
  return const Card(
    elevation: 2,
    color: Color(0xfff6f6f6),
    margin: EdgeInsets.only(left: 50, right: 50),
    child: Padding(
      padding: EdgeInsets.all(20.0),
      child: Text(
        'Регистрация привяжет твои сказки  к облаку, после чего они всегда будут с тобой',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 14,
        ),
      ),
    ),
  );
}

