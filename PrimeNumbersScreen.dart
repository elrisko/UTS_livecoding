import 'package:flutter/material.dart';

class PrimeNumbersScreen extends StatelessWidget {
  final List<int> primeNumbers = [2];

  PrimeNumbersScreen() {
    for (int i = 3; i <= 45; i++) {
      bool isPrime = true;
      for (int j = 2; j <= i / 2; j++) {
        if (i % j == 0) {
          isPrime = false;
          break;
        }
      }
      if (isPrime) {
        primeNumbers.add(i);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text ('ElRiskoNoval (genap)'),
      ),
      body: ListView.builder(
        itemCount: primeNumbers.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(primeNumbers[index].toString()),
          );
        },
      ),
    );
  }
}