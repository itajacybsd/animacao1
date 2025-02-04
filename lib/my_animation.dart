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
            right: pressed ? 50 : 400,
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
                width: pressed ? 50 : 150,
                height: 50,
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

          // Positioned(
          //   right: size.width - (size.width - 50),
          //   bottom: size.height - (size.height - 50),
          //   // duration: Duration(seconds: 2),
          //   child: Container(
          //     width: 50,
          //     height: 50,
          //     decoration: BoxDecoration(
          //       borderRadius: BorderRadius.circular(25),
          //       color: Colors.blue,
          //     ),
          //   ),
          // ),
          // Positioned(
          //   right: size.width - 200,
          //   bottom: size.height - 200,
          //   // duration: Duration(seconds: 2),
          //   child: Align(
          //     alignment: Alignment.center,
          //     child: Container(
          //       height: 50,
          //       width: 150,
          //       decoration: BoxDecoration(
          //         color: Colors.red,
          //       ),
          //     ),
          //   ),
          // ),