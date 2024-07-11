import 'package:flutter/material.dart';

class AnimatedThemeExample extends StatefulWidget {
  const AnimatedThemeExample({super.key});

  @override
  _AnimatedThemeExampleState createState() => _AnimatedThemeExampleState();
}

class _AnimatedThemeExampleState extends State<AnimatedThemeExample> {
  bool isDarkTheme = false;

  void _toggleTheme() {
    setState(() {
      isDarkTheme = !isDarkTheme;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedTheme(
      duration: const Duration(milliseconds: 500),
      data: isDarkTheme ? ThemeData.dark() : ThemeData.light(),
      child: Scaffold(
        appBar: AppBar(
          elevation: 2,
          shadowColor: Colors.black,
          title: const Text('AnimatedTheme',style: TextStyle(fontWeight: FontWeight.bold),),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'Tap the button to toggle theme',
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 20),
              TextButton(
                onPressed: _toggleTheme,
                child: const Text('Toggle Theme'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
