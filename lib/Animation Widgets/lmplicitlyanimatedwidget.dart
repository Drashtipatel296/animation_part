import 'package:flutter/material.dart';

class ImplicitlyAnimatedWidgetExample extends StatefulWidget {
  const ImplicitlyAnimatedWidgetExample({super.key});

  @override
  _ImplicitlyAnimatedWidgetExampleState createState() => _ImplicitlyAnimatedWidgetExampleState();
}

class _ImplicitlyAnimatedWidgetExampleState extends State<ImplicitlyAnimatedWidgetExample> {
  bool isLarge = false;
  bool isRed = true;

  void _toggleSize() {
    setState(() {
      isLarge = !isLarge;
    });
  }

  void _toggleColor() {
    setState(() {
      isRed = !isRed;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        shadowColor: Colors.black,
        title: const Text('ImplicitlyAnimatedWidget Example',style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AnimatedContainer(
              duration: const Duration(milliseconds: 500),
              width: isLarge ? 200.0 : 140.0,
              height: isLarge ? 200.0 : 100.0,
              color: isRed ? Colors.red : Colors.blue,
              child: const Center(
                child: Text(
                  'Tap buttons to animate',
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextButton(
                  onPressed: _toggleSize,
                  child: Text(isLarge ? 'Shrink' : 'Grow'),
                ),
                const SizedBox(width: 20),
                TextButton(
                  onPressed: _toggleColor,
                  child: const Text('Change Color'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
