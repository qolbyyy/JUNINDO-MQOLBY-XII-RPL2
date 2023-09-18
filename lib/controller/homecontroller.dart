import 'package:flutter/material.dart';
import 'package:get/get.dart';

class homecontroller extends GetxController {
  TextEditingController namacontroller = TextEditingController();

  RxString nama = RxString('');
  RxBool isOpen = RxBool(true);

  updateName(String name) {
    nama.value = name;
    return name;
  }

  void setTog(bool toggle) {
    isOpen(toggle);
    print(toggle);
  }

  RxInt x = 0.obs;

  void increaseX() {
    x.value++;
  }

  void decreaseX() {
    x.value--;
  }

  // void ChangeName(String nn) {
  //   nama.value = nn;
  //   print(nama.value);
  //   Get.snackbar('nilai dari variabel nama adalah : ', nama.value,
  //       snackPosition: SnackPosition.BOTTOM, duration: Duration(seconds: 3));
  // }
}
