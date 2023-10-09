import 'package:flutter/material.dart';
import 'package:flutter_application_4/controllers/beranda_dua_controller.dart';
import 'package:get/get.dart';

class BerandaTiga extends StatelessWidget {
  const BerandaTiga({super.key});

  @override
  Widget build(BuildContext context) {
    BerandaDuaController berandaDuaController = Get.put(BerandaDuaController());
    var show = berandaDuaController.show.value;
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: Obx(() => berandaDuaController.isLoading.value
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : ListView.builder(
                itemCount: berandaDuaController.listsatu[show].posts?.length,
                itemBuilder: (context, i) {
                  return ListTile(
                    leading: CircleAvatar(
                      child: Text(
                          "${berandaDuaController.listsatu[show].posts?[i].id}"),
                    ),
                    title: Text(
                        "${berandaDuaController.listsatu[show].posts?[i].title}"),
                    subtitle: Text(
                        "${berandaDuaController.listsatu[show].posts?[i].content}"),
                  );
                },
              )),
      ),
    );
  }
}
