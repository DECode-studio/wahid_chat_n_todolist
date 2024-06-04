import 'package:flutter/material.dart';
import 'package:wahid_chat_n_todolist/style/box.dart';
import 'package:wahid_chat_n_todolist/style/color.dart';

Widget blackFill() => Positioned.fill(
      child: Container(
        decoration: customRoundedShadowStyle(color: black.withAlpha(200)),
      ),
    );
