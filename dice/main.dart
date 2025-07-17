import 'package:flutter/material.dart';
import "dart:math";

void main() {
  runApp(const DiceApp());
}

class DiceApp extends StatelessWidget {
  const DiceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: DicewithStatefull());
  }
}

class DicewithStatefull extends StatefulWidget {
  const DicewithStatefull({super.key});

  @override
  State<DicewithStatefull> createState() => _DicewithStatefullState();
}

class _DicewithStatefullState extends State<DicewithStatefull> {
  final Random _random = Random();
  List<int> diceValues = [1, 1, 1, 1];
  List<double> rotations = [0, 0, 0, 0];

  void rollDice(int index) {
    setState(() {
      diceValues[index] = _random.nextInt(6) + 1;
      rotations[index] += 1;
    });
  }
  Widget buildAnimatedDice(int index) {
    return GestureDetector(
      onTap: () => rollDice(index),
      child: TweenAnimationBuilder(
        tween: Tween<double>(begin: 0, end: rotations[index]),
        duration: const Duration(milliseconds: 400),
        builder: (context, value, child) {
          final angle = value * pi * 2;
          final scale = 1.0 + 0.2 * sin(value * pi);
          return Transform(
            alignment: Alignment.center,
            transform: Matrix4.identity()
              ..rotateZ(angle)
              ..scale(scale),
            child: Image.asset(
              "images/d${diceValues[index]}.png",
              width: 100,
            ),
          );
        },
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.red),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildAnimatedDice(0),
                SizedBox(width: 20),
                buildAnimatedDice(1),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildAnimatedDice(2),
                SizedBox(width: 20),
                buildAnimatedDice(3),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
