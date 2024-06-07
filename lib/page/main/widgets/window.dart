import 'package:flutter/material.dart';
import 'package:wahid_chat_n_todolist/controller/page/main_page_controller.dart';
import 'package:wahid_chat_n_todolist/page/task/main.dart';
import 'package:wahid_chat_n_todolist/style/box.dart';
import 'package:wahid_chat_n_todolist/style/color.dart';

import '../../inbox/main.dart';

Widget windowView(
  MainPageController controller,
  Size size,
) =>
    controller.viewWindow.value == ''
        ? Container()
        : Align(
            alignment: Alignment.bottomRight,
            child: Container(
              height: controller.getSize(size.height),
              width: controller.getSize(size.height),
              decoration: customRoundedShadowStyle(color: white),
              margin: const EdgeInsets.only(bottom: 100, right: 20),
              child: controller.viewWindow.value == 'inbox'
                  ? ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: const MainInboxPage(),
                    )
                  : controller.viewWindow.value == 'task'
                      ? ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: const MainTaskPage(),
                        )
                      : Container(),
            ),
          );
