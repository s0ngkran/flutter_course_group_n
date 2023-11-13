import 'package:flutter/material.dart';

class Data {
  int id;
  String title;
  IconData? icon;

  Data({
    required this.id,
    required this.title,
    this.icon,
  });
}
