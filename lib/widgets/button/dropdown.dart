import 'package:flutter/material.dart';
import 'package:flutter_dropdown/flutter_dropdown.dart';
import 'package:wahid_chat_n_todolist/style/box.dart';
import 'package:wahid_chat_n_todolist/style/color.dart';
import 'package:wahid_chat_n_todolist/style/text.dart';

Widget dropdown({
  required List data,
  required String initialData,
  required String hint,
  required IconData icon,
  required Function(dynamic) onChanged,
  bool? underline,
}) =>
    Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      decoration: customRoundedStyle(color: gray_3, size: 15),
      child: DropDown<dynamic>(
        isExpanded: true,
        showUnderline: underline ?? false,
        initialValue: initialData == '' ? null : initialData,
        items: data,
        hint: Text(hint),
        icon: Icon(
          icon,
          color: gray_1,
        ),
        onChanged: onChanged,
      ),
    );

Widget titleDropdown({
  required List data,
  required String initialData,
  required String hint,
  required IconData icon,
  required Function(dynamic) onChanged,
  bool? underline,
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
          padding: const EdgeInsets.symmetric(horizontal: 15),
          decoration: customRoundedStyle(color: gray_3, size: 15),
          child: DropDown<dynamic>(
            isExpanded: true,
            showUnderline: underline ?? false,
            initialValue: initialData == '' ? null : initialData,
            items: data,
            hint: Text(hint),
            icon: Icon(
              icon,
              color: gray_1,
            ),
            onChanged: onChanged,
          ),
        ),
      ],
    );
