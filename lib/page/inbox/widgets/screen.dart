import 'package:flutter/material.dart';
import 'package:wahid_chat_n_todolist/controller/page/inbox_page_controller.dart';
import 'package:wahid_chat_n_todolist/widgets/load/load.dart';

import 'card.dart';
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
                : ListView.builder(
                    padding: const EdgeInsets.all(10),
                    itemCount: controller.inboxData().length,
                    itemBuilder: (_, index) =>
                        index == controller.inboxData().length - 1
                            ? cardData(
                                controller,
                                controller.inboxData()[index],
                                size,
                              )
                            : Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  cardData(
                                    controller,
                                    controller.inboxData()[index],
                                    size,
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.symmetric(vertical: 5),
                                    child: Divider(thickness: 1),
                                  )
                                ],
                              ),
                  ),
          ),
        ],
      ),
    );
