import 'package:flutter/material.dart';
import 'package:wahid_chat_n_todolist/controller/page/task_page_controller.dart';
import 'package:wahid_chat_n_todolist/widgets/load/load.dart';

Widget screenPage(
  TaskPageController controller,
  Size size,
) =>
    controller.loadData.value
        ? spinLoad(text: 'Loading Tasks...')
        : Column(
            children: [],
          );
