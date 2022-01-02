import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widget/figure_widget.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff6f6f6),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xff8b84e2),
        leading: const Icon(
          Icons.menu,
          size: 30,
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  child: ClipPath(
                    clipper: MyCustomClipper(),
                    child: Container(
                      height: 175,
                      width: double.infinity,
                      color: const Color(0xff8b84e2),
                      child: figureText('Подборки', 'Открыть все'),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: box(),
                ),
              ],
            ),
            // figureWidget(figureText('Подборки', 'Открыть все'),),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 220,
              width: 338,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 7,
                    offset: const Offset(0, 1), // changes position of shadow
                  ),
                ],
                color: const Color(0xfff6f6f6),
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(25),
                  topLeft: Radius.circular(25),
                ),
              ),
              child: ListView(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              'Аудиозаписи',
                              style: TextStyle(
                                fontSize: 24,
                              ),
                            ),
                            Text(
                              'Открыть все',
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(50.0),
                        child: Text(
                          'Как только ты запишешь аудио, она появится здесь.',
                          style: TextStyle(
                            fontSize: 20,
                            color: Color(0xff3a3a55).withOpacity(0.5),
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Image.asset(
                        'assets/images/Arrow - Down.png',
                        width: 60,
                        color: Color(0xff3a3a55).withOpacity(0.5),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget figureText(String str1, String str2) {
  return Padding(
    padding: const EdgeInsets.only(left: 15, right: 15),
    child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            str1,
            style: const TextStyle(
              fontSize: 24,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            str2,
            style: const TextStyle(
              fontSize: 14,
              color: Colors.white,
            ),
          ),
        ]),
  );
}

Widget box() {
  return Padding(
    padding: const EdgeInsets.only(left: 15, right: 15, top: 40,),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 183.w,
          height: 240.w,
          decoration: BoxDecoration(
            color: Color(0xff71a59f).withOpacity(0.7),
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Здесь будет твой набор сказок',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 20,
                ),
                TextButton(
                  onPressed: () {},
                  child: Column(
                    children: [
                      const Text(
                        'Добавить',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                        ),
                      ),
                      Divider(
                        color: Colors.white,
                        height: 5.h,
                        thickness: 1,
                        indent: 26,
                        endIndent: 26,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Column(
          children: [
            Container(
              width: 183.w,
              height: 112.w,
              decoration: BoxDecoration(
                color: Color(0xfff1b488).withOpacity(0.7),
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Тут',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                    // textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 18.h,
            ),
            Container(
              width: 183.w,
              height: 112.w,
              decoration: BoxDecoration(
                color: Color(0xff678bd2).withOpacity(0.7),
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'И тут',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                    // textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
