import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:wahid_chat_n_todolist/style/color.dart';

Widget spinLoad() => Center(
      child: spinIcon(),
    );

Widget customeSpinLoad(
  double height,
  double width,
) =>
    SizedBox(
      height: height,
      width: width,
      child: Center(
        child: spinIcon(),
      ),
    );

Widget spinIcon() => SpinKitFadingCube(
      color: mainColor_1,
      size: 50.0,
    );
