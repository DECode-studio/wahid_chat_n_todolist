import 'package:flutter/material.dart';
import 'package:wahid_chat_n_todolist/controller/page/main_page_controller.dart';
import 'package:wahid_chat_n_todolist/style/color.dart';

import 'window.dart';

Widget screenPage(
  MainPageController controller,
  Size size,
) =>
    Stack(
      children: [
        Positioned.fill(
          child: GestureDetector(
            onTap: () => controller.toggleWindow(''),
            child: Container(
              color: white,
              height: size.height,
              width: size.width,
            ),
          ),
        ),
        windowView(controller, size),
      ],
    );
