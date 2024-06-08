import 'package:flutter/material.dart';
import 'package:wahid_chat_n_todolist/model/chat.dart';
import 'package:wahid_chat_n_todolist/service/formater/date.dart';
import 'package:wahid_chat_n_todolist/style/text.dart';

Widget separatorData(
  ChatModel data,
) =>
    Row(
      children: [
        const Expanded(
          child: Divider(
            thickness: 1,
          ),
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          dateDayFullFormater(data.createChat),
          style: bold_12_4,
        ),
        const SizedBox(
          width: 5,
        ),
        const Expanded(
          child: Divider(
            thickness: 1,
          ),
        ),
      ],
    );
