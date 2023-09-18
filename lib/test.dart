import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'SecondScreen.dart';
import 'controller/homecontroller.dart';

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    homecontroller hc = Get.put(homecontroller());
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        actions: [
          IconButton(
              onPressed: () {
                Get.bottomSheet(Container(
                  color: Colors.white,
                  width: 100,
                  height: 100,
                  child: Column(
                    children: [
                      TextButton(
                          onPressed: () {
                            Get.toNamed('/indec');
                          },
                          child: const Text('Increase/Decrease')),
                      const SizedBox(
                        height: 10,
                      ),
                      TextButton(
                          onPressed: () {
                            Get.toNamed('/listsc');
                          },
                          child: const Text('List Screen'))
                    ],
                  ),
                ));
              },
              icon: const Icon(Icons.edit_note_outlined))
        ],
      ),
      body: Container(
        margin: const EdgeInsets.only(left: 32, right: 32),
        child: Column(
          children: [
            const SizedBox(height: 16),
            TextField(
              controller: hc.namacontroller,
              decoration:
                  const InputDecoration(labelText: 'Nama yang di test input'),
              onSubmitted: (value) {
                hc.nama.value = value;
                Get.snackbar('nilai dari variabel nama adalah : ', value,
                    snackPosition: SnackPosition.BOTTOM,
                    duration: const Duration(seconds: 3));
              },
            ),
            Obx(() => Text(hc.nama.value)),
            const SizedBox(height: 16),
            Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Obx(
                      () => Text(hc.nama.value == false ? "Close" : "Open"),
                    ),
                    Obx(() => Switch(
                        value: hc.isOpen.value,
                        activeColor:
                            hc.isOpen.value == true ? Colors.green : Colors.red,
                        onChanged: (value) {
                          hc.setTog(value);
                        }))
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
