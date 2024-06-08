import 'package:get/get.dart';

class MainPageController extends GetxController {
  var viewWindow = ''.obs;
  var detailWindow = ''.obs;

  @override
  void onInit() {
    super.onInit();

    initData();
  }

  void initData() {
    viewWindow.value = '';
    detailWindow.value = '';
  }

  void toggleWindow(String mode) {
    if (mode == '') {
      viewWindow.value = mode;
      detailWindow.value = mode;
    } else {
      if (Get.width >= 500) {
        viewWindow.value = mode;
      } else {}
    }
  }

  void chooseData(String data) {
    if (Get.width >= 500) {
      detailWindow.value = data;
    } else {}
  }

  double getSize(double size) {
    return size * 0.7;
  }
}
