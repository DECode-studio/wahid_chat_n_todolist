import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wahid_chat_n_todolist/controller/page/task_page_controller.dart';
import 'package:wahid_chat_n_todolist/style/color.dart';

import 'widgets/screen.dart';

class MainTaskPage extends StatelessWidget {
  const MainTaskPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return GetX<TaskPageController>(
      init: TaskPageController(),
      builder: (controller) => Scaffold(
        backgroundColor: white,
        body: screenPage(controller, size),
      ),
    );
  }
}
