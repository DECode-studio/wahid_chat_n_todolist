import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wahid_chat_n_todolist/controller/page/chat_page_controller.dart';
import 'package:wahid_chat_n_todolist/controller/page/main_page_controller.dart';
import 'package:wahid_chat_n_todolist/style/color.dart';

import 'widgets/screen.dart';

class ChatPage extends StatelessWidget {
  final MainPageController? controller;
  const ChatPage({super.key, this.controller});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return GetX<ChatPageController>(
      init: ChatPageController(controller: controller),
      builder: (controller) => Scaffold(
        backgroundColor: white,
        body: screenPage(controller, size),
      ),
    );
  }
}
