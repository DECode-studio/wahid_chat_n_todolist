import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:wahid_chat_n_todolist/style/color.dart';
import 'package:wahid_chat_n_todolist/style/text.dart';

Widget spinLoad({
  String? text,
}) =>
    Center(
      child: text == null
          ? spinIcon()
          : Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                spinIcon(),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  text,
                  style: normal_12_1,
                ),
              ],
            ),
    );

Widget customeSpinLoad(
  double height,
  double width,
) =>
    SizedBox(
      height: height,
      width: width,
      child: Center(
        child: spinIcon(size: (height + width) / 2),
      ),
    );

Widget spinIcon({
  double? size,
}) =>
    SpinKitFadingCircle(
      color: mainColor_1,
      size: size ?? 50.0,
    );
