import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:wahid_chat_n_todolist/controller/page/chat_page_controller.dart';
import 'package:wahid_chat_n_todolist/style/color.dart';
import 'package:wahid_chat_n_todolist/style/text.dart';

Widget headerPage(
  ChatPageController controller,
  Size size,
) =>
    Container(
      height: 56,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          IconButton(
            onPressed: () => controller.actionMethod('back'),
            icon: Icon(
              FluentIcons.ios_arrow_ltr_24_filled,
              color: black,
              size: 20,
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          Expanded(
            child: _titleBar(controller),
          ),
          const SizedBox(
            width: 15,
          ),
          IconButton(
            onPressed: () => controller.actionMethod('exit'),
            icon: Icon(
              Icons.close,
              color: black,
            ),
          ),
        ],
      ),
    );

Widget _titleBar(
  ChatPageController controller,
) =>
    controller.roomData.value.nameRoom != ''
        ? Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                controller.roomData.value.nameRoom ?? '',
                style: normal_15_4,
              ),
              Text(
                '${controller.listParticipant.length} Participants',
                style: normal_10_1,
              ),
            ],
          )
        : Text(
            controller.chatParticipant(controller.roomData.value),
            style: bold_18_4,
          );
