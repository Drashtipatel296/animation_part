import 'package:flutter/material.dart';

class AnimatedSwitcherExample extends StatefulWidget {
  const AnimatedSwitcherExample({super.key});

  @override
  _AnimatedSwitcherExampleState createState() => _AnimatedSwitcherExampleState();
}

class _AnimatedSwitcherExampleState extends State<AnimatedSwitcherExample> {
  bool isFirstWidget = true;

  void _toggleWidget() {
    setState(() {
      isFirstWidget = !isFirstWidget;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        shadowColor: Colors.black,
        title: const Text(
          'AnimatedSwitcher',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedSwitcher(
              duration: const Duration(seconds: 1),
              transitionBuilder: (Widget child, Animation<double> animation) {
                return ScaleTransition(scale: animation, child: child);
              },
              child: isFirstWidget
                  ? Container(
                      key: const ValueKey(1),
                      color: Colors.blue.shade800,
                      width: 200,
                      height: 200,
                    )
                  : Container(
                      key: const ValueKey(2),
                      color: Colors.red,
                      width: 200,
                      height: 200,
                    ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _toggleWidget,
              child: const Text('Toggle Widget'),
            ),
          ],
        ),
      ),
    );
  }
}
