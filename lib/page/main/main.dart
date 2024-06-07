import 'package:flutter/material.dart';
import 'package:flutter_expandable_fab/flutter_expandable_fab.dart';
import 'package:get/get.dart';
import 'package:wahid_chat_n_todolist/controller/page/main_page_controller.dart';
import 'package:wahid_chat_n_todolist/style/color.dart';

import 'widgets/fab.dart';
import 'widgets/header.dart';
import 'widgets/screen.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return GetX<MainPageController>(
      init: MainPageController(),
      builder: (controller) => Scaffold(
        backgroundColor: white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: white,
          toolbarHeight: 66,
          automaticallyImplyLeading: false,
          flexibleSpace: headerPage(controller, size),
        ),
        body: screenPage(controller, size),
        floatingActionButtonLocation: ExpandableFab.location,
        floatingActionButton: fab(controller, size),
      ),
    );
  }
}
