import 'package:flutter/material.dart';

class AnimatedContainerExample extends StatefulWidget {
  const AnimatedContainerExample({super.key});

  @override
  _AnimatedContainerExampleState createState() => _AnimatedContainerExampleState();
}

class _AnimatedContainerExampleState extends State<AnimatedContainerExample> {
  bool toggled = false;

  void _toggleContainer() {
    setState(() {
      toggled = !toggled;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        shadowColor: Colors.black,
        title: const Text('AnimatedContainer',style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              width: toggled ? 300 : 150,
              height: toggled ? 150 : 300,
              color: toggled ? Colors.orange : Colors.green,
              alignment: toggled ? Alignment.topRight : Alignment.bottomLeft,
              duration: const Duration(seconds: 2),
              curve: Curves.easeInOut,
              child: Container(
                width: 50,
                height: 50,
                color: Colors.blue,
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: _toggleContainer,
              child: const Text('Animate Container'),
            ),
          ],
        ),
      ),
    );
  }
}
