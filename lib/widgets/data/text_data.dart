import 'package:flutter/widgets.dart';
import 'package:wahid_chat_n_todolist/style/text.dart';

Widget textData({
  required String title,
  required String data,
}) =>
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: bold_15_1,
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          data,
          style: normal_15_1,
        ),
      ],
    );
