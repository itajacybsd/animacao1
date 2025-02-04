import 'package:flutter/material.dart';

class MyAnimation extends StatefulWidget {
  const MyAnimation({super.key});

  @override
  State<MyAnimation> createState() => _MyAnimationState();
}

class _MyAnimationState extends State<MyAnimation> {
  bool pressed = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exercício Animação 01'),
      ),
      body: Stack(
        children: [
          AnimatedPositioned(
            curve: Curves.linear,
            right: pressed ? 50 : 270,
            bottom: pressed ? 50 : 800,
            width: pressed ? 50 : 150,
            height: 50,
            duration: Duration(milliseconds: 1500),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  pressed = !pressed;
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(pressed ? 25 : 0),
                  color: Colors.blue,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
