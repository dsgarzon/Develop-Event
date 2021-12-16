import 'package:flutter/material.dart';
import 'package:flutter_auth/ui/pages/Login/login_screen.dart';
import 'package:flutter_auth/ui/theme/colors.dart';
//import 'package:get/get.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(//GetMaterialApp
      debugShowCheckedModeBanner: false,
      title: 'Develop Event',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: LoginScreen(),
    );
  }
}
