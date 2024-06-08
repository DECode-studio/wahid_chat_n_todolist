import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:wahid_chat_n_todolist/controller/page/task_page_controller.dart';
import 'package:wahid_chat_n_todolist/style/color.dart';
import 'package:wahid_chat_n_todolist/widgets/button/button.dart';
import 'package:wahid_chat_n_todolist/widgets/button/dropdown.dart';

Widget headerPage(
  TaskPageController controller,
  Size size,
) =>
    Padding(
      padding: const EdgeInsets.all(15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            height: 45,
            width: 185,
            child: dropdown(
              data: controller.taskType,
              initialData: controller.selectedType.value,
              hint: 'My Task',
              icon: FluentIcons.chevron_down_48_filled,
              onChanged: (value) => controller.actionMethod(
                mode: 'type',
                data: value,
              ),
            ),
          ),
          SizedBox(
            height: 45,
            width: 150,
            child: button(
              onClick: () {},
              color: mainColor_1,
              text: 'New Task',
            ),
          ),
        ],
      ),
    );
