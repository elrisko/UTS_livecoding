import 'package:flutter/material.dart';
import 'package:tugas4/appStatefull.dart';
import 'package:tugas4/appStateless.dart';

void main() {

  runApp(const AppStatefull());
}

bool isPrime(int number) {
  if (number <= 1) {
    return false;
  }

  for (int i = 2; i <= number / 2; i++) {
    if (number % i == 0) {
      return false;
    }
  }

  return true;
}