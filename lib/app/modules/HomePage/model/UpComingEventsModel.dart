import 'package:flutter/material.dart';

class UpcomeingEvent {
  String bar;
  String date;
  String title;
  String time;
  String? url;
  UpcomeingEvent({
    required this.bar,
    required this.date,
    required this.title,
    required this.time,
    this.url,
  });
}
