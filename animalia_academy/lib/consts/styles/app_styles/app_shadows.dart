import "package:flutter/material.dart";


class AppShadows {
  static List<BoxShadow> subtleShadow = [
    BoxShadow(
      color: Colors.black.withOpacity(0.1),
      blurRadius: 3.0,
      spreadRadius: 1.0,
      offset: const Offset(0, 2.0),
    ),
  ];
  static List<BoxShadow> mediumShadow = [
    BoxShadow(
      color: Colors.black.withOpacity(0.2),
      blurRadius: 6.0,
      spreadRadius: 2.0,
      offset: const Offset(0, 4.0),
    ),
  ];
  static List<BoxShadow> strongShadow = [
    BoxShadow(
      color: Colors.black.withOpacity(0.3),
      blurRadius: 10.0,
      spreadRadius: 3.0,
      offset: const Offset(0, 6.0),
    ),
  ];
  static List<BoxShadow> heavyShadow = [
    BoxShadow(
      color: Colors.black.withOpacity(0.3),
      blurRadius: 10.0,
      spreadRadius: 5.0,
      offset: const Offset(0, 10.0),
    ),
  ];
  static List<BoxShadow> insetShadow = [
    BoxShadow(
      color: Colors.grey[400]!,
      blurRadius: 4.0,
      spreadRadius: -2.0,
      offset: const Offset(0, -2.0),
    ),
  ];
  static List<BoxShadow> textShadow = [
    BoxShadow(
      color: Colors.black.withOpacity(0.2),
      blurRadius: 2.0,
      spreadRadius: 0,
      offset: const Offset(1.0, 1.0),
    ),
  ];
}
