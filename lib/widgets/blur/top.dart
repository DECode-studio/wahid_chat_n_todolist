import 'package:flutter/material.dart';

Widget topBlurWhite(
  Size size,
) =>
    Align(
      alignment: Alignment.topCenter,
      child: Container(
        width: size.width,
        height: 100.0,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(0.0, -1.0),
            end: Alignment(0.0, 0.6),
            colors: <Color>[
              Color(0xffffffff),
              Color(0x00ffffff),
            ],
          ),
        ),
      ),
    );
