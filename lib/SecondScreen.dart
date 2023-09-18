import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var isiArgument = Get.arguments;
    return Scaffold(
      appBar: AppBar(),
      body: Text("${isiArgument}"),
    );
  }
}
