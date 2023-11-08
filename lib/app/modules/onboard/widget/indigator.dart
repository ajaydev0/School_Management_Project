// ignore_for_file: non_constant_identifier_names
import 'package:flutter/material.dart';

Widget Indigator({color, double? width}) {
  return Container(
    height: 10,
    width: width,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: color,
    ),
  );
}
