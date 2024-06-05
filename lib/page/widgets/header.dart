import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:wahid_chat_n_todolist/controller/page/main_page_controller.dart';
import 'package:wahid_chat_n_todolist/style/color.dart';
import 'package:wahid_chat_n_todolist/style/text.dart';

Widget headerPage(
  MainPageController controller,
  Size size,
) =>
    Container(
      height: 66,
      color: mainColor_1,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(
            FluentIcons.chat_48_filled,
            color: teal,
            size: 30,
          ),
          const Spacer(),
          Text(
            "Chat n To Do List by Wahid",
            style: bold_25_2,
          )
        ],
      ),
    );
