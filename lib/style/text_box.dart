import 'package:flutter/material.dart';

import 'color.dart';
import 'text.dart';

double borderRadius = 15;

InputDecoration textFieldStyle(
  String hint,
  IconData icons,
) =>
    InputDecoration(
      hintText: hint,
      hintStyle: TextStyle(
        color: gray_1,
      ),
      prefixIcon: Icon(
        icons,
        color: gray_1,
      ),
      contentPadding: const EdgeInsets.symmetric(
        vertical: 10.0,
        horizontal: 10.0,
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: gray_1,
          width: 1,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(borderRadius),
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: gray_3,
          width: 1,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(borderRadius),
        ),
      ),
    );

InputDecoration passwordFieldStyle(
  String hint,
  IconData icons,
  bool passVisible, {
  required Function() onTap,
}) =>
    InputDecoration(
      hintText: hint,
      hintStyle: TextStyle(
        color: gray_1,
      ),
      prefixIcon: Icon(
        icons,
        color: gray_1,
      ),
      contentPadding: const EdgeInsets.symmetric(
        vertical: 10.0,
        horizontal: 10.0,
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: gray_1,
          width: 1,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(borderRadius),
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: gray_3,
          width: 1,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(borderRadius),
        ),
      ),
      suffixIcon: IconButton(
        icon: Icon(
          passVisible ? Icons.visibility : Icons.visibility_off,
          color: Colors.black,
        ),
        onPressed: onTap,
      ),
    );

InputDecoration searchFieldStyle(
  String hint,
  IconData icons,
) =>
    InputDecoration(
      hintText: hint,
      hintStyle: normal_15_1,
      prefixIcon: Icon(
        icons,
        color: gray_1,
      ),
      contentPadding: const EdgeInsets.symmetric(
        vertical: 10.0,
        horizontal: 10.0,
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: gray_1,
          width: 0,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(borderRadius),
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: gray_3,
          width: 0,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(borderRadius),
        ),
      ),
    );

InputDecoration searchFieldStyle_2(
  String hint,
  IconData icons,
) =>
    InputDecoration(
      hintText: hint,
      hintStyle: normal_15_1,
      prefixIcon: Icon(
        icons,
        color: gray_1,
      ),
      contentPadding: const EdgeInsets.symmetric(
        vertical: 10.0,
        horizontal: 10.0,
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: gray_1,
          width: 0,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(borderRadius),
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: gray_3,
          width: 0,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(borderRadius),
        ),
      ),
    );

InputDecoration costFieldStyle(
  String hint,
) =>
    InputDecoration(
      hintText: 'Rp $hint',
      hintStyle: normal_15_1,
      contentPadding: const EdgeInsets.symmetric(
        vertical: 10.0,
        horizontal: 10.0,
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: gray_1,
          width: 0,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(borderRadius),
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: gray_3,
          width: 0,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(borderRadius),
        ),
      ),
    );

InputDecoration customFieldStyle(
  String hint, {
  IconData? icons,
  Function()? ontap,
  TextStyle? hintStyle,
}) =>
    InputDecoration(
      hintText: hint,
      hintStyle: hintStyle ?? normal_15_1,
      prefixIcon: icons != null
          ? Icon(
              icons,
              color: black,
            )
          : null,
      contentPadding: const EdgeInsets.symmetric(
        vertical: 10.0,
        horizontal: 10.0,
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: gray_1,
          width: 0,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(borderRadius),
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: gray_3,
          width: 0,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(borderRadius),
        ),
      ),
    );

var normalInputBorder = OutlineInputBorder(
  borderSide: BorderSide(
    color: gray_3,
    width: 1,
  ),
  borderRadius: const BorderRadius.all(
    Radius.circular(20),
  ),
);
