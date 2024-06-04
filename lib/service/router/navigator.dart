import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Navigate {
  void to(BuildContext context, page) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => page,
      ),
    );
  }

  void push(BuildContext context, page) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => page,
      ),
    );
  }

  void untill(BuildContext context, page, decide) {
    Navigator.pushAndRemoveUntil<dynamic>(
      context,
      MaterialPageRoute<dynamic>(
        builder: (BuildContext context) => page,
      ),
      (route) => decide,
    );
  }

  void back() {
    Navigator.pop(Get.context!);
  }

  void kill() {
    Navigator.of(Get.context!, rootNavigator: true).pop();
  }
}
