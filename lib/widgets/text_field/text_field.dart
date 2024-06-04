import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wahid_chat_n_todolist/style/box.dart';
import 'package:wahid_chat_n_todolist/style/color.dart';
import 'package:wahid_chat_n_todolist/style/text.dart';
import 'package:wahid_chat_n_todolist/style/text_box.dart';

Widget textBox({
  required TextEditingController textController,
  required IconData icon,
  required TextInputType inputType,
  required String hint,
  int? lines,
  Function()? onTap,
  Function(String value)? onChange,
  Function(String value)? onSubmit,
  bool? readOnly,
  List<TextInputFormatter>? inputFormatters,
}) =>
    Container(
      decoration: customRoundedStyle(color: gray_3, size: 15),
      child: TextField(
        controller: textController,
        keyboardType: inputType,
        readOnly: readOnly ?? false,
        decoration: textFieldStyle(hint, icon),
        maxLines: lines ?? 1,
        minLines: lines ?? 1,
        onChanged: onChange,
        onSubmitted: onSubmit,
        onTap: onTap,
        inputFormatters: inputFormatters,
      ),
    );

Widget textBoxTitle({
  required TextEditingController textController,
  required IconData icon,
  required TextInputType inputType,
  required String hint,
  int? lines,
  Function()? onTap,
  Function(String value)? onChange,
  Function(String value)? onSubmit,
  bool? readOnly,
  List<TextInputFormatter>? inputFormatters,
}) =>
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          hint,
          style: bold_12_1,
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          decoration: customRoundedStyle(color: gray_3, size: 15),
          child: TextField(
            controller: textController,
            keyboardType: inputType,
            readOnly: readOnly ?? false,
            decoration: textFieldStyle(hint, icon),
            maxLines: lines ?? 1,
            minLines: lines ?? 1,
            onChanged: onChange,
            onSubmitted: onSubmit,
            onTap: onTap,
            inputFormatters: inputFormatters,
          ),
        ),
      ],
    );
