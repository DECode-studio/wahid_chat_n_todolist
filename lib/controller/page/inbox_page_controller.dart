import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wahid_chat_n_todolist/service/function/delay.dart';

class InboxPageController extends GetxController {
  var txt_search = TextEditingController();
  var searchData = ''.obs;
  var loadData = true.obs;

  @override
  void onInit() {
    super.onInit();

    getData();
  }

  void getData() async {
    loadData.value = true;

    await syncDelay(value: 3000);

    loadData.value = false;
  }

  void setFilter({
    required String mode,
  }) {
    if (mode == 'search') {
      searchData.value = txt_search.text;
    }
  }
}
