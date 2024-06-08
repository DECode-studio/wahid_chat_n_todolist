import 'package:flutter/material.dart';
import 'package:wahid_chat_n_todolist/controller/page/chat_page_controller.dart';
import 'package:wahid_chat_n_todolist/widgets/load/load.dart';

import 'card.dart';
import 'chat.dart';
import 'header.dart';

Widget screenPage(
  ChatPageController controller,
  Size size,
) =>
    Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          headerPage(controller, size),
          Expanded(
            child: controller.loadData.value
                ? spinLoad(text: 'Loading Chats...')
                : ListView.builder(
                    padding: const EdgeInsets.all(10),
                    itemCount: controller.listChat.length,
                    itemBuilder: (context, index) => cardData(
                      controller,
                      controller.listChat[index],
                      size,
                    ),
                  ),
          ),
          chatField(controller),
        ],
      ),
    );
