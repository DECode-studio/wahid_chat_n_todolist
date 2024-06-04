import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wahid_chat_n_todolist/style/box.dart';
import 'package:wahid_chat_n_todolist/style/color.dart';
import 'package:wahid_chat_n_todolist/style/text.dart';
import 'package:wahid_chat_n_todolist/style/text_box.dart';

// ignore_for_file: must_be_immutable

class passwordField extends StatelessWidget {
  final TextEditingController textController;
  final IconData icon;
  final TextInputType inputType;
  final String hint;
  final Function(String value)? onChange;
  final Function(String value)? onSubmit;
  passwordField({
    required this.textController,
    required this.icon,
    required this.inputType,
    required this.hint,
    this.onChange,
    this.onSubmit,
    super.key,
  });

  var passVisible = true.obs;

  @override
  Widget build(BuildContext context) {
    return Obx(() => Container(
          decoration: customRoundedStyle(color: gray_3, size: 15),
          child: TextField(
            controller: textController,
            keyboardType: inputType,
            obscureText: passVisible.value,
            onChanged: onChange,
            onSubmitted: onSubmit,
            decoration: passwordFieldStyle(
              hint,
              icon,
              passVisible.value,
              onTap: () => passVisible.value = !passVisible.value,
            ),
          ),
        ));
  }
}

class passwordFieldTitle extends StatelessWidget {
  final TextEditingController textController;
  final IconData icon;
  final TextInputType inputType;
  final String hint;
  final Function(String value)? onChange;
  final Function(String value)? onSubmit;
  passwordFieldTitle({
    required this.textController,
    required this.icon,
    required this.inputType,
    required this.hint,
    this.onChange,
    this.onSubmit,
    super.key,
  });

  var passVisible = true.obs;

  @override
  Widget build(BuildContext context) {
    return Obx(() => Column(
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
                obscureText: passVisible.value,
                onChanged: onChange,
                onSubmitted: onSubmit,
                decoration: passwordFieldStyle(
                  hint,
                  icon,
                  passVisible.value,
                  onTap: () => passVisible.value = !passVisible.value,
                ),
              ),
            ),
          ],
        ));
  }
}
