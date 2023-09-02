import 'dart:math';

double calculateSine(double degrees) {
  final double radians = degrees * pi / 180;
  return sin(radians);
}