import 'dart:convert';

import 'package:flutter_application_4/models/main_model.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as axios;

class BerandaController extends GetxController {
  RxBool isLoading = RxBool(false);

  RxList<MainModels> listsatu = RxList<MainModels>([]);

  @override
  void onInit() {
    getData();
    super.onInit();
  }

  getData() async {
    try {
      isLoading.value == true;
      var res = await axios.get(Uri.parse(
          'https://mocki.io/v1/721438e8-3687-4bfb-9a5b-b956b726cb19'));

      if (res.statusCode == 200) {
        isLoading.value == false;
        final content = jsonDecode(res.body);

        for (Map<String, dynamic> i in content) {
          listsatu.add(MainModels.fromJson(i));
          print(listsatu.length);
        }
      }
    } catch (e) {
      print(e.toString());
    }
  }
}
