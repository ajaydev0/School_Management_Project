import 'package:flutter/material.dart';

class AcademicModel {
  IconData icon;
  String name;
  void Function()? ontap;
  AcademicModel({
    required this.icon,
    required this.name,
    required this.ontap,
  });
}
