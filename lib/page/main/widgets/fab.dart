import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_expandable_fab/flutter_expandable_fab.dart';
import 'package:wahid_chat_n_todolist/controller/page/main_page_controller.dart';
import 'package:wahid_chat_n_todolist/style/color.dart';

Widget fab(
  MainPageController controller,
  Size size,
) =>
    ExpandableFab(
      type: ExpandableFabType.side,
      openButtonBuilder: RotateFloatingActionButtonBuilder(
        child: const Icon(FluentIcons.grid_28_filled),
        foregroundColor: teal,
        backgroundColor: mainColor_1,
        shape: const CircleBorder(),
        angle: 3.14 * 2,
      ),
      closeButtonBuilder: FloatingActionButtonBuilder(
        size: 40,
        builder: (_, void Function()? onPressed, __) => IconButton(
          onPressed: () {
            onPressed!();
            controller.toggleWindow('');
          },
          icon: Icon(
            FluentIcons.caret_left_24_filled,
            color: teal,
          ),
          color: mainColor_1,
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(mainColor_1),
          ),
        ),
      ),
      children: [
        _itemButton(
          text: 'Inbox',
          icon: FluentIcons.chat_multiple_32_filled,
          bacColor: controller.viewWindow.value == 'inbox' ? purple : white,
          foreColor: controller.viewWindow.value == 'inbox' ? white : purple,
          onClick: () => controller.toggleWindow(
            controller.viewWindow.value == 'inbox' ? '' : 'inbox',
          ),
        ),
        _itemButton(
          text: 'Task',
          icon: FluentIcons.tasks_app_28_filled,
          bacColor: controller.viewWindow.value == 'task' ? yellow : white,
          foreColor: controller.viewWindow.value == 'task' ? white : yellow,
          onClick: () => controller.toggleWindow(
            controller.viewWindow.value == 'task' ? '' : 'task',
          ),
        ),
      ],
    );

Widget _itemButton({
  required String text,
  required IconData icon,
  required Color bacColor,
  required Color foreColor,
  required Function() onClick,
}) =>
    FloatingActionButton.extended(
      tooltip: text,
      backgroundColor: bacColor,
      shape: const CircleBorder(),
      onPressed: onClick,
      label: Icon(
        icon,
        color: foreColor,
      ),
    );
