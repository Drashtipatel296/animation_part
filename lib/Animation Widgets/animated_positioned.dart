import 'package:flutter/material.dart';

class AnimatedPositionedExample extends StatefulWidget {
  const AnimatedPositionedExample({super.key});

  @override
  _AnimatedPositionedExampleState createState() => _AnimatedPositionedExampleState();
}

class _AnimatedPositionedExampleState extends State<AnimatedPositionedExample> {
  bool isMoved = false;

  void _togglePosition() {
    setState(() {
      isMoved = !isMoved;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        shadowColor: Colors.black,
        title: const Text(
          'AnimatedPositioned',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Stack(
          children: [
            AnimatedPositioned(
              duration: const Duration(seconds: 2),
              curve: Curves.easeInOut,
              left: isMoved ? 250.0 : 50.0,
              top: isMoved ? 450.0 : 50.0,
              child: Container(
                width: 150,
                height: 150,
                color: Colors.blue,
                child: const Center(
                  child: Text(
                    'Move me!',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 150,
              left: 150,
              child: ElevatedButton(
                onPressed: _togglePosition,
                child: const Text('Animate Position'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
