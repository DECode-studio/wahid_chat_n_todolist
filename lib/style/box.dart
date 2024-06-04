import 'dart:io';

import 'package:flutter/material.dart';

import 'color.dart';

BoxDecoration fabStyle(List<Color> colors) => BoxDecoration(
      shape: BoxShape.circle,
      gradient: LinearGradient(
        colors: colors,
      ),
    );

BoxDecoration navStyle() => BoxDecoration(
      boxShadow: [
        BoxShadow(
            color: black.withOpacity(0.5),
            offset: Offset(0, 4),
            blurRadius: 8.0)
      ],
    );

BoxDecoration customGradientCardStyle({
  List<Color>? colors,
  double? size,
}) =>
    BoxDecoration(
      borderRadius: BorderRadius.circular(size ?? 20),
      gradient: LinearGradient(
        colors: colors ?? blueCombine,
      ),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.3),
          spreadRadius: 5,
          blurRadius: 7,
          offset: const Offset(0, 3), // changes position of shadow
        ),
      ],
    );

BoxDecoration mainRoundedStyle() => BoxDecoration(
      color: mainColor_1,
      borderRadius: BorderRadius.circular(20),
    );

BoxDecoration subRoundedStyle() => BoxDecoration(
      color: white,
      borderRadius: BorderRadius.circular(20),
    );

BoxDecoration customRoundedStyle({
  required Color color,
  Color? borderColor,
  double? size,
}) =>
    BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(size ?? 20),
      border: borderColor != null
          ? Border.all(
              width: 2,
              color: borderColor,
            )
          : null,
    );

BoxDecoration mainRoundedShadowStyle() => BoxDecoration(
      color: mainColor_1,
      borderRadius: BorderRadius.circular(20),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.3),
          spreadRadius: 5,
          blurRadius: 7,
          offset: const Offset(0, 3), // changes position of shadow
        ),
      ],
    );

BoxDecoration subRoundedShadowStyle() => BoxDecoration(
      color: white,
      borderRadius: BorderRadius.circular(20),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.3),
          spreadRadius: 5,
          blurRadius: 7,
          offset: const Offset(0, 3), // changes position of shadow
        ),
      ],
    );

BoxDecoration customRoundedShadowStyle({
  required Color color,
  Color? borderColor,
  double? size,
}) =>
    BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(size ?? 20),
      border: borderColor != null
          ? Border.all(
              width: 2,
              color: borderColor,
            )
          : null,
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.3),
          spreadRadius: 5,
          blurRadius: 7,
          offset: const Offset(0, 3), // changes position of shadow
        ),
      ],
    );

BoxDecoration topRoundedCustomeStyle(
  Color color,
  double size,
) =>
    BoxDecoration(
      color: color,
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(size),
      ),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.3),
          spreadRadius: 5,
          blurRadius: 7,
          offset: const Offset(0, 3), // changes position of shadow
        ),
      ],
    );

BoxDecoration bottomRoundedCustomeStyle(
  Color color,
  double size, {
  bool shadow = true,
  ImageProvider<Object>? imageProvider,
  File? imageUri,
  BoxFit? fit,
}) =>
    BoxDecoration(
      color: color,
      borderRadius: BorderRadius.vertical(
        bottom: Radius.circular(size),
      ),
      boxShadow: shadow
          ? [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(0, 3), // changes position of shadow
              ),
            ]
          : null,
      image: imageProvider != null
          ? DecorationImage(
              image: imageProvider,
              fit: fit ?? BoxFit.cover,
            )
          : imageUri != null
              ? DecorationImage(
                  image: FileImage(
                    imageUri,
                  ),
                  fit: fit ?? BoxFit.cover,
                )
              : null,
    );

BoxDecoration customeImageCardStyle({
  ImageProvider<Object>? imageProvider,
  File? imageUri,
  Color? color,
  double? size,
  BoxFit? fit,
  bool shadow = true,
}) =>
    BoxDecoration(
      color: color ?? gray_1,
      borderRadius: BorderRadius.circular(size ?? 20),
      boxShadow: shadow
          ? [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(0, 3),
              ),
            ]
          : null,
      image: imageProvider != null
          ? DecorationImage(
              image: imageProvider,
              fit: fit ?? BoxFit.cover,
            )
          : imageUri != null
              ? DecorationImage(
                  image: FileImage(
                    imageUri,
                  ),
                  fit: fit ?? BoxFit.cover,
                )
              : null,
    );

BoxDecoration imageCardStyle({
  ImageProvider<Object>? imageProvider,
  File? imageUri,
}) =>
    BoxDecoration(
      color: gray_1,
      borderRadius: BorderRadius.circular(20),
      image: imageProvider != null
          ? DecorationImage(
              image: imageProvider,
              fit: BoxFit.cover,
            )
          : imageUri != null
              ? DecorationImage(
                  image: FileImage(
                    imageUri,
                  ),
                  fit: BoxFit.cover,
                )
              : null,
    );

BoxDecoration imageCardStyle_2({
  ImageProvider<Object>? imageProvider,
  File? imageUri,
}) =>
    BoxDecoration(
      color: white,
      borderRadius: BorderRadius.circular(20),
      image: imageProvider != null
          ? DecorationImage(
              image: imageProvider,
              fit: BoxFit.cover,
            )
          : imageUri != null
              ? DecorationImage(
                  image: FileImage(
                    imageUri,
                  ),
                  fit: BoxFit.cover,
                )
              : null,
    );

BoxDecoration imageShadowCardStyle({
  ImageProvider<Object>? imageProvider,
  File? imageUri,
}) =>
    BoxDecoration(
      color: gray_1,
      borderRadius: BorderRadius.circular(20),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.3),
          spreadRadius: 5,
          blurRadius: 7,
          offset: const Offset(0, 3),
        ),
      ],
      image: imageProvider != null
          ? DecorationImage(
              image: imageProvider,
              fit: BoxFit.cover,
            )
          : imageUri != null
              ? DecorationImage(
                  image: FileImage(
                    imageUri,
                  ),
                  fit: BoxFit.cover,
                )
              : null,
    );

BoxDecoration imageShadowCardStyle_2({
  ImageProvider<Object>? imageProvider,
  File? imageUri,
}) =>
    BoxDecoration(
      color: white,
      borderRadius: BorderRadius.circular(20),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.3),
          spreadRadius: 5,
          blurRadius: 7,
          offset: const Offset(0, 3),
        ),
      ],
      image: imageProvider != null
          ? DecorationImage(
              image: imageProvider,
              fit: BoxFit.cover,
            )
          : imageUri != null
              ? DecorationImage(
                  image: FileImage(
                    imageUri,
                  ),
                  fit: BoxFit.cover,
                )
              : null,
    );

BoxDecoration circleImageCard({
  ImageProvider<Object>? imageProvider,
  File? imageUri,
  BoxFit? fit,
}) =>
    BoxDecoration(
      color: white,
      borderRadius: BorderRadius.circular(500),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.3),
          spreadRadius: 5,
          blurRadius: 7,
          offset: const Offset(0, 3),
        ),
      ],
      image: imageProvider != null
          ? DecorationImage(
              image: imageProvider,
              fit: fit ?? BoxFit.cover,
            )
          : imageUri != null
              ? DecorationImage(
                  image: FileImage(
                    imageUri,
                  ),
                  fit: fit ?? BoxFit.cover,
                )
              : null,
    );

BoxDecoration circleCard({
  Color? color,
}) =>
    BoxDecoration(
      color: color ?? white,
      borderRadius: BorderRadius.circular(500),
    );

BoxDecoration circleShadowCard({
  Color? color,
}) =>
    BoxDecoration(
      color: color ?? white,
      borderRadius: BorderRadius.circular(500),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.3),
          spreadRadius: 5,
          blurRadius: 7,
          offset: const Offset(0, 3),
        ),
      ],
    );

BoxDecoration customCard({Color? color, double? size}) => BoxDecoration(
      color: color ?? mainColor_1,
      borderRadius: BorderRadius.circular(size ?? 20),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.3),
          spreadRadius: 5,
          blurRadius: 7,
          offset: const Offset(0, 3), // changes position of shadow
        ),
      ],
    );
