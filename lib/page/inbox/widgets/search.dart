import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:wahid_chat_n_todolist/controller/page/inbox_page_controller.dart';
import 'package:wahid_chat_n_todolist/style/box.dart';
import 'package:wahid_chat_n_todolist/style/color.dart';
import 'package:wahid_chat_n_todolist/widgets/text_field/text_field.dart';

Widget searchConfig(
  InboxPageController controller,
) =>
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Row(
        children: [
          Expanded(
            child: textBox(
              textController: controller.txt_search,
              icon: FluentIcons.search_48_filled,
              inputType: TextInputType.text,
              hint: 'Cari disini...',
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          GestureDetector(
            onTap: () => controller.setFilter(mode: 'search'),
            child: Container(
              padding: const EdgeInsets.all(12),
              decoration:
                  customRoundedShadowStyle(color: mainColor_1, size: 15),
              child: Icon(FluentIcons.search_48_filled, color: white),
            ),
          ),
        ],
      ),
    );
