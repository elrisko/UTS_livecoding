import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AppStatefull extends StatefulWidget {
  const AppStatefull({super.key});

  @override
  State<AppStatefull> createState() => _AppStatefullState();
}

class _AppStatefullState extends State<AppStatefull> {
  int angka = 2;

  void ContohIncrement(){
    setState(() {
      angka +=2;

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

    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UTS Stateless',
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () => ContohIncrement(),
          child: Icon(Icons.add),
        ),
        appBar: AppBar(
          centerTitle: true,
          title: Text('El Risko Noval/20104410002'),
        ),
        body: Center(
          child: Text('Angka: $angka', style: TextStyle(fontSize: 30)),
        ),
      ),
    );
  }
}