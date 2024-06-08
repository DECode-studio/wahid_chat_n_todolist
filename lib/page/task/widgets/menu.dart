import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:wahid_chat_n_todolist/controller/page/task_page_controller.dart';
import 'package:wahid_chat_n_todolist/model/task.dart';
import 'package:wahid_chat_n_todolist/style/color.dart';
import 'package:wahid_chat_n_todolist/style/text.dart';

Widget menuButton(
  TaskPageController controller,
  TaskModel data,
) =>
    PopupMenuButton(
      onSelected: (result) {
        if (result == 1) {
          controller.actionMethod(
            mode: 'delete',
            data: data.idTask,
          );
        }
      },
      itemBuilder: (context) => [
        PopupMenuItem(
          value: 1,
          child: _buttonMenu(
            icon: FluentIcons.delete_48_filled,
            name: "Delete",
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
