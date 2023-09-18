import 'package:flutter/material.dart';
import 'package:flutter_application_1/test.dart';
import 'dua.dart';

void main() {
  runApp(const Utama());
}

class Utama extends StatelessWidget {
  const Utama({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/logo.png",
                    width: 150,
                  ),
                  const Text(
                    "GetX",
                    style: TextStyle(
                      color: Colors.purple,
                      fontSize: 60,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const MenuDua(),
                      ),
                    );
                  },
                  child: Container(
                    width: 200,
                    height: 200,
                    decoration: const BoxDecoration(color: Colors.red),
                    child: const Center(
                        child: Text(
                      "obx GetBuilder",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                      textAlign: TextAlign.center,
                    )),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const Test(),
                      ),
                    );
                  },
                  child: Container(
                    margin: const EdgeInsets.symmetric(vertical: 20),
                    width: 200,
                    height: 200,
                    decoration: const BoxDecoration(color: Colors.blue),
                    child: const Center(
                        child: Text(
                      "Snackbar Dialog, BottomSheet",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                      textAlign: TextAlign.center,
                    )),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  child: Container(
                    width: 200,
                    height: 200,
                    decoration: const BoxDecoration(color: Colors.green),
                    child: const Center(
                        child: Text(
                      "Named Navigation",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                      textAlign: TextAlign.center,
                    )),
                  ),
                ),
                GestureDetector(
                  child: Container(
                    width: 200,
                    height: 200,
                    decoration: const BoxDecoration(color: Colors.orange),
                    child: const Center(
                        child: Text(
                      "Depedency Management",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                      textAlign: TextAlign.center,
                    )),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
