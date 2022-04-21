import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: const Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: const DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int firstDiceFace = 1;
  int secondDiceFace = 1;

  void rollDice() {
    setState(
      () {
        firstDiceFace = 1 + Random().nextInt(6);
        secondDiceFace = 1 + Random().nextInt(6);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButton(
                    onPressed: rollDice,
                    child: Image.asset(
                      "assets/images/dice$firstDiceFace.png",
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButton(
                    onPressed: rollDice,
                    child: Image.asset(
                      "assets/images/dice$secondDiceFace.png",
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
