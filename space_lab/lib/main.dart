import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/all.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:space_lab/page/register_page.dart';
import 'package:space_lab/page/welcome_page.dart';

import 'page/home_page.dart';
import 'page/main_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final FirebaseApp app = await Firebase.initializeApp();
  runApp(ProviderScope(child: MyApp(app: app)));
}

class MyApp extends StatelessWidget {
  MyApp({Key? key, required this.app}) : super(key: key);

  FirebaseApp app;

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
        routes: {
          '/home' : (context) => const WelcomePage(),
          '/register': (context) => const RegisterPage(),
          '/mainPage': (context) => const MainPage(),
        },
        // initialRoute: '/home',
        home: HomePage(app: app),
      ),
    );
  }
}

