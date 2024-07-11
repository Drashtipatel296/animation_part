import 'package:flutter/material.dart';

class DecoratedBoxTransitionExample extends StatefulWidget {
  const DecoratedBoxTransitionExample({super.key});

  @override
  _DecoratedBoxTransitionExampleState createState() => _DecoratedBoxTransitionExampleState();
}

class _DecoratedBoxTransitionExampleState extends State<DecoratedBoxTransitionExample> with TickerProviderStateMixin {
  late AnimationController controller;
  late Animation<Decoration> decorationAnimation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );

    decorationAnimation = DecorationTween(
      begin: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.5),
            offset: const Offset(5, 5),
            blurRadius: 10,
          )
        ],
      ),
      end: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(50),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.5),
            offset: const Offset(-5, -5),
            blurRadius: 10,
          )
        ],
      ),
    ).animate(CurvedAnimation(
      parent: controller,
      curve: Curves.easeInOut,
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
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        shadowColor: Colors.black,
        title: const Text('DecoratedBoxTransition',style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: Center(
        child: DecoratedBoxTransition(
          decoration: decorationAnimation,
          child: const SizedBox(
            width: 200,
            height: 200,
            child: Center(
              child: Text(
                'Decorated Box',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
