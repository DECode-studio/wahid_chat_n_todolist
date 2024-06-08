import 'package:flutter/material.dart';
import 'package:sticky_grouped_list/sticky_grouped_list.dart';
import 'package:wahid_chat_n_todolist/controller/page/chat_page_controller.dart';
import 'package:wahid_chat_n_todolist/model/chat.dart';
import 'package:wahid_chat_n_todolist/service/value/date.dart';
import 'package:wahid_chat_n_todolist/widgets/load/load.dart';

import 'card.dart';
import 'chat.dart';
import 'header.dart';
import 'reff.dart';
import 'separator.dart';
import 'toast.dart';

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
                : Stack(
                    children: [
                      Positioned.fill(
                        child: StickyGroupedListView<ChatModel, DateTime>(
                          padding: const EdgeInsets.all(10),
                          elements: controller.listChat,
                          groupBy: (e) =>
                              dateOnly(e.createChat ?? DateTime.now()),
                          groupSeparatorBuilder: (e) => separatorData(e),
                          itemBuilder: (_, e) => cardData(controller, e, size),
                          itemComparator: (a, b) =>
                              a.createChat!.compareTo(b.createChat!),
                          elementIdentifier: (element) => element.dataChat,
                          itemScrollController: controller.scrollController,
                          order: StickyGroupedListOrder.ASC,
                        ),
                      ),
                      reffChat(controller, size),
                      loadToast(controller, size),
                    ],
                  ),
          ),
          chatField(controller),
        ],
      ),
    );
