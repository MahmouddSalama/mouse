import 'package:chat_app2/constans/colors.dart';
import 'package:flutter/material.dart';

import 'screens/splash/splash_screen.dart';
main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xffE5E4E9),
        appBarTheme: AppBarTheme(
          backgroundColor: KsecoundColor
        )
      ),
      home: SplashScreen(),
    );
  }
}
