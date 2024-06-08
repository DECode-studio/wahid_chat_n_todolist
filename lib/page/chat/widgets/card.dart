import 'package:flutter/material.dart';
import 'package:wahid_chat_n_todolist/controller/page/chat_page_controller.dart';
import 'package:wahid_chat_n_todolist/model/chat.dart';
import 'package:wahid_chat_n_todolist/service/formater/date.dart';
import 'package:wahid_chat_n_todolist/style/box.dart';
import 'package:wahid_chat_n_todolist/style/color.dart';
import 'package:wahid_chat_n_todolist/style/text.dart';

Widget cardData(
  ChatPageController controller,
  ChatModel data,
  Size size,
) =>
    Column(
      crossAxisAlignment: data.idSender == '1'
          ? CrossAxisAlignment.end
          : CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          controller.listUser.where((e) => e.idUser == data.idSender).isNotEmpty
              ? controller.listUser
                          .where((e) => e.idUser == data.idSender)
                          .first
                          .nameUser ==
                      'Admin'
                  ? 'You'
                  : controller.listUser
                          .where((e) => e.idUser == data.idSender)
                          .first
                          .nameUser ??
                      ''
              : '',
          style: data.idSender == '1' ? bold_12_6(purple) : bold_12_6(yellow),
        ),
        const SizedBox(
          height: 5,
        ),
        Container(
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.only(bottom: 15),
          decoration: customRoundedShadowStyle(
            color: (data.idSender == '1' ? purple : yellow).withAlpha(200),
            size: 10,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                data.dataChat ?? '',
                style: normal_12_1,
                textAlign: TextAlign.left,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                timeFormater(data.createChat),
                style: normal_10_1,
                textAlign: TextAlign.left,
              ),
            ],
          ),
        )
      ],
    );
