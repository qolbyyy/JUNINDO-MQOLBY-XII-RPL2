import 'package:flutter/material.dart';
import 'package:flutter_application_1/tiga.dart';

class MenuDua extends StatelessWidget {
  const MenuDua({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('State Managemen'),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 100),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const MenuTiga(),
                      ),
                    );
                  },
                  child: Container(
                    width: 500,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.circular(
                          20.0), // Atur sudut yang dibulatkan
                    ),
                    child: const Center(
                        child: Text(
                      "GetBuilder",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                      textAlign: TextAlign.center,
                    )),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  child: Container(
                    width: 500,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.circular(
                          20.0), // Atur sudut yang dibulatkan
                    ),
                    child: const Center(
                        child: Text(
                      "obx",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                      textAlign: TextAlign.center,
                    )),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  child: Container(
                    width: 500,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.circular(
                          20.0), // Atur sudut yang dibulatkan
                    ),
                    child: const Center(
                        child: Text(
                      "SUM XY",
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
