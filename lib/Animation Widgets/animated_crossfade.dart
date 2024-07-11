import 'package:flutter/material.dart';

class AnimatedCrossFadeExample extends StatefulWidget {
  const AnimatedCrossFadeExample({super.key});

  @override
  _AnimatedCrossFadeExampleState createState() => _AnimatedCrossFadeExampleState();
}

class _AnimatedCrossFadeExampleState extends State<AnimatedCrossFadeExample> {
  bool showFirst = true;

  void _toggleCrossFade() {
    setState(() {
      showFirst = !showFirst;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        shadowColor: Colors.black,
        title: const Text(
          'AnimatedCrossFade',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedCrossFade(
              firstChild: Container(
                width: 250,
                height: 200,
                color: Colors.blue.shade900,
                alignment: Alignment.center,
                child: const Text(
                  'First Container',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              secondChild: Container(
                width: 250,
                height: 200,
                color: Colors.pink.shade900,
                alignment: Alignment.center,
                child: const Text(
                  'Second Container',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              crossFadeState: showFirst
                  ? CrossFadeState.showFirst
                  : CrossFadeState.showSecond,
              duration: const Duration(seconds: 1),
              firstCurve: Curves.easeIn,
              secondCurve: Curves.easeOut,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _toggleCrossFade,
              child: const Text('Toggle Container'),
            ),
          ],
        ),
      ),
    );
  }
}
