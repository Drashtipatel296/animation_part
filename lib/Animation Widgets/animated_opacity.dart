import 'package:flutter/material.dart';

class AnimatedOpacityExample extends StatefulWidget {
  const AnimatedOpacityExample({super.key});

  @override
  _AnimatedOpacityExampleState createState() => _AnimatedOpacityExampleState();
}

class _AnimatedOpacityExampleState extends State<AnimatedOpacityExample> {
  bool visible = true;

  void _toggleOpacity() {
    setState(() {
      visible = !visible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        shadowColor: Colors.black,
        title: const Text(
          'AnimatedOpacity',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedOpacity(
              opacity: visible ? 1.0 : 0.0,
              duration: const Duration(seconds: 2),
              curve: Curves.easeOutSine,
              child: Container(
                width: 200,
                height: 200,
                color: Colors.purpleAccent,
                child: const Center(
                  child: Text(
                    'Hello!',
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _toggleOpacity,
              child: const Text('Toggle Opacity'),
            ),
          ],
        ),
      ),
    );
  }
}
