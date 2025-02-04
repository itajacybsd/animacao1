import 'package:flutter/material.dart';

class MyAnimation extends StatelessWidget {
  const MyAnimation({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    print(size.height);
    print(size.width);
    bool change = true;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exercício Animação 01'),
      ),
      body: Container(
        child: Stack(
          children: [
            Positioned(
              right: size.width - (size.width - 50),
              bottom: size.height - (size.height - 50),
              // duration: Duration(seconds: 2),
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.blue,
                ),
              ),
            ),
            Positioned(
              right: size.width - (size.width - 300),
              bottom: size.height - (size.height - 800),
              // duration: Duration(seconds: 2),
              child: Align(
                alignment: Alignment.center,
                child: Container(
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.red,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
