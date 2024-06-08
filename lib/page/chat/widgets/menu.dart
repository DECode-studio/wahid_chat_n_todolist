import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:wahid_chat_n_todolist/controller/page/chat_page_controller.dart';
import 'package:wahid_chat_n_todolist/model/chat.dart';
import 'package:wahid_chat_n_todolist/style/color.dart';
import 'package:wahid_chat_n_todolist/style/text.dart';

Widget menuButton(
  ChatPageController controller,
  ChatModel data,
) =>
    PopupMenuButton(
      onSelected: (result) {
        if (result == 1) {}

        if (result == 2) {
          controller.actionMethod('reply', data: data.idChat);
        }
      },
      itemBuilder: (context) => [
        PopupMenuItem(
          value: 1,
          child: _buttonMenu(
            icon: FluentIcons.share_48_filled,
            name: "Share",
          ),
        ),
        PopupMenuItem(
          value: 2,
          child: _buttonMenu(
            icon: FluentIcons.arrow_reply_48_filled,
            name: "Reply",
          ),
        ),
      ],
    );

Widget _buttonMenu({
  required IconData icon,
  required String name,
}) =>
    Row(
      children: [
        Icon(
          icon,
          color: mainColor_1,
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          name,
          style: normal_15_4,
        )
      ],
    );
