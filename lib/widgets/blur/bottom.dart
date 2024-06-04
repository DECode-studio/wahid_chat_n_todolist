import 'package:flutter/material.dart';

Widget bottomBlurWhite(
  Size size,
) =>
    Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: size.width,
        height: 70.0,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(0.0, -1.0),
            end: Alignment(0.0, 0.6),
            colors: <Color>[
              Color(0x00ffffff),
              Color(0xffffffff),
            ],
          ),
        ),
      ),
    );
