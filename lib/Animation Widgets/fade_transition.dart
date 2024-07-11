import 'package:flutter/material.dart';

class FadeTransitionExample extends StatefulWidget {
  const FadeTransitionExample({super.key});

  @override
  _FadeTransitionExampleState createState() => _FadeTransitionExampleState();
}

class _FadeTransitionExampleState extends State<FadeTransitionExample> with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animation;
  bool isFirstText = true;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );
    animation = CurvedAnimation(
      parent: controller,
      curve: Curves.easeIn,
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  void _toggleText() {
    if (isFirstText) {
      controller.forward();
    } else {
      controller.reverse();
    }
    setState(() {
      isFirstText = !isFirstText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        shadowColor: Colors.black,
        title: const Text(
          'FadeTransition',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FadeTransition(
              opacity: animation,
              child: isFirstText
                  ? const Text(
                      'Hello, Flutter!',
                      key: ValueKey(1),
                      style: TextStyle(fontSize: 24),
                    )
                  : const Text(
                      'Goodbye, Flutter!',
                      key: ValueKey(2),
                      style: TextStyle(fontSize: 24),
                    ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _toggleText,
              child: const Text('Toggle Text'),
            ),
          ],
        ),
      ),
    );
  }
}
