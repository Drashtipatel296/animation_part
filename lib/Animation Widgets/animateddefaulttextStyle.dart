import 'package:flutter/material.dart';

class AnimatedDefaultTextStyleExample extends StatefulWidget {
  const AnimatedDefaultTextStyleExample({super.key});

  @override
  _AnimatedDefaultTextStyleExampleState createState() => _AnimatedDefaultTextStyleExampleState();
}

class _AnimatedDefaultTextStyleExampleState extends State<AnimatedDefaultTextStyleExample> {
  bool isBold = false;
  bool isLarge = false;
  Color textColor = Colors.black;

  void _toggleBold() {
    setState(() {
      isBold = !isBold;
    });
  }

  void _toggleSize() {
    setState(() {
      isLarge = !isLarge;
    });
  }

  void _toggleColor() {
    setState(() {
      textColor = (textColor == Colors.black) ? Colors.blue : Colors.black;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        shadowColor: Colors.black,
        title: const Text('AnimatedDefaultTextStyle',style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AnimatedDefaultTextStyle(
              duration: const Duration(milliseconds: 500),
              style: TextStyle(
                fontSize: isLarge ? 24.0 : 16.0,
                fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
                color: textColor,
              ),
              child: const Text('AnimatedDefaultTextStyle'),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextButton(
                  onPressed: _toggleBold,
                  child: Text(isBold ? 'Normal' : 'Bold'),
                ),
                const SizedBox(width: 20),
                TextButton(
                  onPressed: _toggleSize,
                  child: Text(isLarge ? 'Small' : 'Large'),
                ),
                const SizedBox(width: 20),
                TextButton(
                  onPressed: _toggleColor,
                  child: const Text('Toggle Color'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
