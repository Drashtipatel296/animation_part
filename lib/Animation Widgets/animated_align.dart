import 'package:flutter/material.dart';

class AnimatedAlignExample extends StatefulWidget {
  const AnimatedAlignExample({super.key});

  @override
  _AnimatedAlignExampleState createState() => _AnimatedAlignExampleState();
}

class _AnimatedAlignExampleState extends State<AnimatedAlignExample> {
  bool aligned = false;

  void _toggleAlignment() {
    setState(() {
      aligned = !aligned;
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 300,
              height: 300,
              color: Colors.grey[300],
              child: AnimatedAlign(
                alignment: aligned ? Alignment.topRight : Alignment.bottomLeft,
                duration: const Duration(seconds: 2),
                curve: Curves.easeInOut,
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.teal,
                  child: const Center(
                    child: Text(
                      'Move me!',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _toggleAlignment,
              child: const Text('Animate Alignment'),
            ),
          ],
        ),
      ),
    );
  }
}
