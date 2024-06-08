import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:toggle_list/toggle_list.dart';
import 'package:wahid_chat_n_todolist/controller/page/task_page_controller.dart';
import 'package:wahid_chat_n_todolist/model/task.dart';
import 'package:wahid_chat_n_todolist/service/formater/date.dart';
import 'package:wahid_chat_n_todolist/service/value/date.dart';
import 'package:wahid_chat_n_todolist/style/color.dart';
import 'package:wahid_chat_n_todolist/style/text.dart';
import 'package:wahid_chat_n_todolist/widgets/text_field/date_field.dart';

import 'menu.dart';

ToggleListItem cardData(
  TaskPageController controller,
  TaskModel data,
  Size size,
) =>
    ToggleListItem(
      onExpansionChanged: (index, statusExpand) {},
      title: _headerData(controller, data, size),
      content: _bodyData(controller, data, false, size),
    );

Widget _headerData(
  TaskPageController controller,
  TaskModel data,
  Size size,
) =>
    Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        IconButton(
          onPressed: () => controller.actionMethod(
            mode: 'finish',
            data: data.idTask,
          ),
          icon: Icon(
            data.statusTask!
                ? FluentIcons.checkbox_checked_24_filled
                : FluentIcons.checkbox_unchecked_24_filled,
            color: mainColor_1,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: Text(
            data.nameTask ?? '',
            style: data.statusTask! ? bold_line_15_1 : bold_15_1,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        data.statusTask!
            ? Container()
            : Text(
                '${calculateDaysDifference(data.targetTime!)} Days Left',
                style: normal_12_6(red),
              ),
        data.statusTask!
            ? Container()
            : const SizedBox(
                width: 10,
              ),
        Text(
          dateFormater(data.targetTime),
          style: normal_12_1,
        ),
        const SizedBox(
          width: 10,
        ),
        menuButton(controller, data),
      ],
    );

Widget _bodyData(
  TaskPageController controller,
  TaskModel data,
  bool expanded,
  Size size,
) =>
    Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                FluentIcons.clock_48_filled,
                color: mainColor_1,
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: datePicker(
                  initData: data.targetTime,
                  hint: 'Target Task',
                  icon: FluentIcons.calendar_empty_48_filled,
                  onChange: (value) =>
                      controller.actionMethod(mode: 'date', data: {
                    'id': data.idTask,
                    'date': value,
                  }),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                FluentIcons.edit_48_filled,
                color: mainColor_1,
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: Text(
                  data.descTask ?? '',
                  style: normal_15_1,
                ),
              ),
            ],
          )
        ],
      ),
    );
