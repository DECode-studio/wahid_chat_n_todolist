import 'package:get/get.dart';
import 'package:intl/date_symbol_data_local.dart';

class CoreAppController extends GetxController {
  @override
  void onInit() {
    super.onInit();

    getData();
  }

  @override
  void onReady() {
    super.onReady();
    getData();
  }

  void getData() async {
    initializeDateFormatting();
  }
}
