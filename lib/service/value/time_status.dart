import 'dart:async';

import 'package:get/get.dart';

RxString timeStatus() {
  var currentTime = DateTime.now().obs;

  Timer.periodic(
    const Duration(seconds: 30),
    (_) => currentTime.value = DateTime.now(),
  );

  if (currentTime.value.hour >= 3 && currentTime.value.hour <= 10) {
    return 'Good Morning 👋🏻'.obs;
  } else if (currentTime.value.hour >= 11 && currentTime.value.hour <= 14) {
    return 'Good Day 👋🏼'.obs;
  } else if (currentTime.value.hour >= 15 && currentTime.value.hour <= 18) {
    return 'Good Afternoon 👋🏽'.obs;
  } else {
    return 'Good Night 👋🏿'.obs;
  }
}

bool isWeekend() {
  var date = DateTime.now();
  return date.weekday == DateTime.saturday || date.weekday == DateTime.sunday;
}

bool isOutOfWorkHours() {
  var time = DateTime.now();
  return time.hour >= 17 || time.hour < 8;
}
