import 'package:flutter/material.dart';
import 'package:wahid_chat_n_todolist/controller/page/inbox_page_controller.dart';
import 'package:wahid_chat_n_todolist/widgets/load/load.dart';

import 'search.dart';

Widget screenPage(
  InboxPageController controller,
  Size size,
) =>
    Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          searchConfig(controller),
          Expanded(
            child: controller.loadData.value
                ? spinLoad(text: 'Loading Chats...')
                : const Column(
                    children: [],
                  ),
          ),
        ],
      ),
    );
