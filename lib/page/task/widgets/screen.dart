import 'package:flutter/material.dart';
import 'package:toggle_list/toggle_list.dart';
import 'package:wahid_chat_n_todolist/controller/page/task_page_controller.dart';
import 'package:wahid_chat_n_todolist/widgets/load/load.dart';

import 'card.dart';
import 'header.dart';

Widget screenPage(
  TaskPageController controller,
  Size size,
) =>
    Column(
      children: [
        headerPage(controller, size),
        Expanded(
            child: controller.loadData.value
                ? spinLoad(text: 'Loading Tasks...')
                : ToggleList(
                    divider: const Divider(
                      thickness: 1,
                    ),
                    scrollPhysics: const BouncingScrollPhysics(),
                    toggleAnimationDuration: const Duration(milliseconds: 100),
                    scrollPosition: AutoScrollPosition.begin,
                    trailing: const Padding(
                      padding: EdgeInsets.all(10),
                      child: Icon(Icons.expand_more),
                    ),
                    children: List.generate(
                      controller.listTasks.length,
                      (index) => cardData(
                        controller,
                        controller.listTasks[index],
                        size,
                      ),
                    ),
                  )),
      ],
    );
