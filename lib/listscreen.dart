import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_application_1/controller/homecontroller.dart';

class listscreen extends StatelessWidget {
  const listscreen({super.key});

  @override
  Widget build(BuildContext context) {
    homecontroller ic = Get.put(homecontroller());
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListScreen'),
      ),
      body: Container(
        child: const Text("ListScreen"),
      ),
    );
  }
}
