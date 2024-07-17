import 'package:flutter/material.dart';
import 'package:whatsppclone/colors.dart';
import 'package:whatsppclone/responsive/responsive_layout.dart';
import 'package:whatsppclone/screens/mobile_screen_layout.dart';
import 'package:whatsppclone/screens/web_screen_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhatsApp Clone',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor
      ),
      home: ResponsiveLayout(mobileScreenLayout: MobileScreenLayout(), webScreenLayout: WebScreenLayout()),
    );
  }
}