import 'package:flutter/material.dart';
import 'package:flutter_application_1/utama.dart';
import 'package:get/get.dart';
import 'listscreen.dart';
import 'inDec_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: [
        GetPage(name: "/", page: () => const MyApp()),
        GetPage(name: "/indec", page: () => const InDecScreen()),
        GetPage(name: "/listsc", page: () => const listscreen()),
      ],
      debugShowCheckedModeBanner: false,
      home: Utama(),
    );
  }
}
