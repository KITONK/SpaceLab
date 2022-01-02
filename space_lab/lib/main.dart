import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:space_lab/page/register_page.dart';
import 'package:space_lab/page/welcome_page.dart';

import 'page/home_page.dart';
import 'page/main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(414, 896),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: () => MaterialApp(
        title: 'Аудиосказки',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          fontFamily: 'TTNorms',
        ),
        // routes: {
        //   '/home' : (context) => const WelcomePage(),
        //   '/register': (context) => const RegisterPage(),
        //   '/mainPage': (context) => const MainPage(),
        // },
        // initialRoute: '/home',
        home: const HomePage(),
      ),
    );
  }
}

