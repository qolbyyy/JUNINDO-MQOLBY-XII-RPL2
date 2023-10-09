import 'package:flutter/material.dart';
import 'package:flutter_application_4/beranda_tiga.dart';
import 'package:flutter_application_4/controllers/beranda_dua_controller.dart';
import 'package:get/get.dart';

class BerandaDua extends StatelessWidget {
  const BerandaDua({super.key});

  @override
  Widget build(BuildContext context) {
    BerandaDuaController berandaDuaController = Get.put(BerandaDuaController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('screen dua'),
      ),
      body: Container(
        margin: const EdgeInsets.only(left: 10, right: 10),
        child: Obx(() {
          if (berandaDuaController.isLoading.value) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return ListView.builder(
              itemCount: berandaDuaController.listsatu.length,
              itemBuilder: (context, index) {
                final model = berandaDuaController.listsatu[index];
                return ListTile(
                  onTap: () {
                    berandaDuaController.show.value = index;
                    Get.to(const BerandaTiga());
                  },
                  leading: CircleAvatar(
                    child: Text(
                      '${model.firstname}',
                      style: const TextStyle(fontSize: 10),
                    ),
                  ),
                  title: Text(
                    "${berandaDuaController.listsatu[index].createdAt}",
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (model.posts != null)
                        for (var post in model.posts!) Text('${post.title}')
                    ],
                  ),
                );
              },
            );
          }
        }),
      ),
    );
  }
}
