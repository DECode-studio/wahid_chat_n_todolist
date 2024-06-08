import 'package:flutter/material.dart';
import 'package:wahid_chat_n_todolist/controller/page/chat_page_controller.dart';
import 'package:wahid_chat_n_todolist/style/box.dart';
import 'package:wahid_chat_n_todolist/style/color.dart';
import 'package:wahid_chat_n_todolist/style/text.dart';
import 'package:wahid_chat_n_todolist/widgets/load/load.dart';

Widget loadToast(
  ChatPageController controller,
  Size size,
) =>
    Align(
      alignment: Alignment.bottomCenter,
      child: controller.loadShow.value
          ? Container(
              margin: const EdgeInsets.all(15),
              padding: const EdgeInsets.all(10),
              decoration: customRoundedShadowStyle(
                color: blue_3,
                size: 5,
              ),
              child: Row(
                children: [
                  customeSpinLoad(34, 34),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Text(
                      'Please wait while we connect you with one of our Team ..',
                      style: bold_12_1,
                    ),
                  )
                ],
              ),
            )
          : Container(),
    );
