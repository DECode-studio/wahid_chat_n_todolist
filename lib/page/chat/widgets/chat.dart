import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:wahid_chat_n_todolist/controller/page/chat_page_controller.dart';
import 'package:wahid_chat_n_todolist/style/box.dart';
import 'package:wahid_chat_n_todolist/style/color.dart';
import 'package:wahid_chat_n_todolist/widgets/text_field/text_field.dart';

Widget chatField(
  ChatPageController controller,
) =>
    Padding(
      padding: const EdgeInsets.only(top: 10, right: 10, left: 10),
      child: Row(
        children: [
          Expanded(
            child: textBox(
              textController: controller.txt_chat,
              icon: FluentIcons.chat_32_filled,
              inputType: TextInputType.text,
              hint: 'Search',
              onSubmit: (_) => controller.actionMethod('send'),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          GestureDetector(
            onTap: () => controller.actionMethod('send'),
            child: Container(
              padding: const EdgeInsets.all(12),
              decoration:
                  customRoundedShadowStyle(color: mainColor_1, size: 15),
              child: Icon(FluentIcons.send_48_filled, color: white),
            ),
          ),
        ],
      ),
    );
