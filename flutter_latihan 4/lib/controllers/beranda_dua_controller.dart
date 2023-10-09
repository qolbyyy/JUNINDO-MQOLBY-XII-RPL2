import 'dart:convert';

import 'package:flutter_application_4/models/main_dua.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as axios;

class BerandaDuaController extends GetxController {
   static final BerandaDuaController _instance = BerandaDuaController._internal();

  factory BerandaDuaController() {
    return _instance;
  }

  BerandaDuaController._internal();

  RxInt show = RxInt(0);
  RxBool isLoading = RxBool(false);

  RxList<MainDuaModels> listsatu = RxList<MainDuaModels>([]);

  @override
  void onInit() {
    getData();
    super.onInit();
  }

  getData() async {
    try {
      isLoading.value == true;
      var res = await axios.get(Uri.parse(
          'https://mocki.io/v1/3ca9bbae-c017-4202-9f6e-2326db7c3d9f'));

      if (res.statusCode == 200) {
        isLoading.value == false;
        final content = jsonDecode(res.body);

        for (Map<String, dynamic> i in content) {
          listsatu.add(MainDuaModels.fromJson(i));
          print(listsatu.length);
        }
      }
    } catch (e) {
      print(e.toString());
    }
  }
}
