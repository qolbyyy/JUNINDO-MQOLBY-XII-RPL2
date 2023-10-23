import 'package:flutter/material.dart';
import 'package:flutter_pengaduan_application/buat.dart';
import 'package:flutter_pengaduan_application/edit.dart';
import 'package:flutter_pengaduan_application/show.dart';
import 'package:flutter_pengaduan_application/beranda.dart';

import 'package:get/get.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Pengadunan Masyarakat',
      debugShowCheckedModeBanner: false,
      getPages: [
          GetPage(name: "/buat", page: () => const Buat()),
          GetPage(name: "/show", page: () => const Show()),
          GetPage(name: "/edit", page: () => const Edit())
      ],
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: "/",
      home: const Beranda(),
    );
  }
}