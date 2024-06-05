import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_expandable_fab/flutter_expandable_fab.dart';
import 'package:wahid_chat_n_todolist/style/color.dart';

Widget fab() => ExpandableFab(
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
          onPressed: onPressed,
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
          bacColor: purple,
          foreColor: white,
          onClick: () {},
        ),
        _itemButton(
          text: 'Task',
          icon: FluentIcons.tasks_app_28_filled,
          bacColor: yellow,
          foreColor: white,
          onClick: () {},
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
