import 'package:flutter/material.dart';

class AnimatedPaddingExample extends StatefulWidget {
  const AnimatedPaddingExample({super.key});

  @override
  _AnimatedPaddingExampleState createState() => _AnimatedPaddingExampleState();
}

class _AnimatedPaddingExampleState extends State<AnimatedPaddingExample> {
  double paddingValue = 16.0;

  void _togglePadding() {
    setState(() {
      paddingValue = (paddingValue == 16.0) ? 32.0 : 16.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        shadowColor: Colors.black,
        title: const Text('AnimatedPadding',style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: Center(
        child: GestureDetector(
          onTap: _togglePadding,
          child: AnimatedPadding(
            duration: const Duration(milliseconds: 500),
            padding: EdgeInsets.all(paddingValue),
            child: Container(
              color: Colors.blue,
              width: 200,
              height: 200,
              child: const Center(
                child: Text(
                  'Tap to Change Padding',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
