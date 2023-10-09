import 'package:flutter/material.dart';
import 'package:flutter_application_4/beranda_dua.dart';
import 'package:flutter_application_4/controllers/beranda_controller.dart';
import 'package:get/get.dart';

class Beranda extends StatefulWidget {
  const Beranda({super.key});

  @override
  State<Beranda> createState() => _BerandaState();
}

class _BerandaState extends State<Beranda> {
  @override
  Widget build(BuildContext context) {
    BerandaController berandaController = Get.put(BerandaController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('screen satu'),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 20),
            child: IconButton(
              onPressed: () {
                Get.bottomSheet(
                  Container(
                    width: double.infinity,
                    height: 256,
                    decoration: const BoxDecoration(color: Colors.white60),
                    child: Column(
                      children: [
                        TextButton(
                            onPressed: () {
                              Get.to(() => const BerandaDua());
                            },
                            child: const Text('screen Dua')),
                      ],
                    ),
                  ),
                );
              },
              icon: const Icon(Icons.menu),
            ),
          )
        ],
      ),
      body: Container(
        margin: const EdgeInsets.only(left: 10, right: 10),
        child: Obx(
          () => berandaController.isLoading.value
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : ListView.builder(
                  itemCount: berandaController.listsatu.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: CircleAvatar(
                        child:
                            Text('${berandaController.listsatu[index].userId}'),
                      ),
                      title: Text('${berandaController.listsatu[index].name}'),
                      subtitle:
                          Text('${berandaController.listsatu[index].email}'),
                    );
                  },
                ),
        ),
      ),
    );
  }
}
