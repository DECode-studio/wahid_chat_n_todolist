import 'package:get/get.dart';
import 'package:wahid_chat_n_todolist/service/function/delay.dart';

class TaskPageController extends GetxController {
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
}
