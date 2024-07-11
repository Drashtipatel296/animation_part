import 'package:flutter/material.dart';

class DefaultTextStyleTransitionExample extends StatefulWidget {
  const DefaultTextStyleTransitionExample({super.key});

  @override
  _DefaultTextStyleTransitionExampleState createState() => _DefaultTextStyleTransitionExampleState();
}

class _DefaultTextStyleTransitionExampleState extends State<DefaultTextStyleTransitionExample> with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<TextStyle> textStyleAnimation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );

    textStyleAnimation = TextStyleTween(
      begin: const TextStyle(
        color: Colors.blue,
        fontSize: 20,
        fontWeight: FontWeight.normal,
      ),
      end: const TextStyle(
        color: Colors.red,
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),
    ).animate(CurvedAnimation(
      parent: controller,
      curve: Curves.linear,
    ));

    controller.forward();
    controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        controller.reverse();
      } else if (status == AnimationStatus.dismissed) {
        controller.forward();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        shadowColor: Colors.black,
        title: const Text('DefaultTextStyleTransition',style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: Center(
        child: DefaultTextStyleTransition(
          style: textStyleAnimation,
          child: Container(
            width: 250,
            height: 200,
            color: Colors.blue,
            child: const Center(
              child: Text(
                'Animated Text',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
