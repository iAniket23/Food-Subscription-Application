// import packages
import 'package:flutter/material.dart';
import 'package:frontend/responsive/web_screen_layout.dart';
import 'package:frontend/responsive/mobile_screen_layout.dart';
import 'package:frontend/screens/login_screen.dart';
import 'responsive/responsive_layout_screen.dart';
import 'utils/colors.dart';

// run the app
void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food Subscription',
      theme: ThemeData.light(),
      home: LoginScreen(),
      // home: const ResponsiveLayout(
      //   webScreenLayout: WebScreenLayout(),
      //   mobileScreenLayout: MobileScreenLayout(),
      // ),
    );
  }
}