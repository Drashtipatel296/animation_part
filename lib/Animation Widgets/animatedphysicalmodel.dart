import 'package:flutter/material.dart';

class AnimatedPhysicalModelExample extends StatefulWidget {
  const AnimatedPhysicalModelExample({super.key});

  @override
  _AnimatedPhysicalModelExampleState createState() => _AnimatedPhysicalModelExampleState();
}

class _AnimatedPhysicalModelExampleState extends State<AnimatedPhysicalModelExample> {
  bool isRaised = false;

  void _toggleRaised() {
    setState(() {
      isRaised = !isRaised;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        shadowColor: Colors.black,
        title: const Text('AnimatedPhysicalModel',style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: Center(
        child: AnimatedPhysicalModel(
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
          elevation: isRaised ? 10.0 : 0.0,
          shape: BoxShape.rectangle,
          shadowColor: Colors.black,
          color: Colors.blue,
          borderRadius: BorderRadius.circular(10.0),
          child: const SizedBox(
            width: 200,
            height: 200,
            child: Center(
              child: Text(
                'Animated\nPhysicalModel',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _toggleRaised,
        child: const Icon(Icons.ads_click),
      ),
    );
  }
}
