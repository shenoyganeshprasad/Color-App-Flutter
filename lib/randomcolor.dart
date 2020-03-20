import 'dart:math';
import 'package:flutter/material.dart';

Color generateRandomColor() {
  Random random = new Random();
  return Color.fromARGB(
      255, random.nextInt(255), random.nextInt(255), random.nextInt(255));
}
