import 'package:get/get.dart';

class MainPageController extends GetxController {
  var viewWindow = ''.obs;

  @override
  void onInit() {
    super.onInit();

    initData();
  }

  void initData() {
    viewWindow.value = '';
  }

  void toggleWindow(String mode) {
    if (Get.width >= 500) {
      viewWindow.value = mode;
    } else {}
  }

  double getSize(double size) {
    return size * 0.7;
  }
}
