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
          AnimatedAlign(
            alignment: pressed ? Alignment.bottomRight : Alignment.topCenter,
            duration: Duration(milliseconds: 1000),
            child: AnimatedPositioned(
              curve: Curves.linear,
              duration: Duration(milliseconds: 1000),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    pressed = !pressed;
                  });
                },
                child: AnimatedContainer(
                  margin: EdgeInsets.all(16),
                  width: pressed ? 70 : 150,
                  height: 70,
                  duration: Duration(milliseconds: 1000),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(pressed ? 35 : 0),
                    color: Colors.blue,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
