import 'package:flutter/material.dart';

class PositionedTransitionExample extends StatefulWidget {
  const PositionedTransitionExample({super.key});

  @override
  _PositionedTransitionExampleState createState() => _PositionedTransitionExampleState();
}

class _PositionedTransitionExampleState extends State<PositionedTransitionExample> with TickerProviderStateMixin {
  late AnimationController controller;
  late Animation<RelativeRect> animation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );

    animation = RelativeRectTween(
      begin: const RelativeRect.fromLTRB(0.0, 0.0, 0.0, 100.0),
      end: const RelativeRect.fromLTRB(0.0, 100.0, 0.0, 0.0),
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
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        shadowColor: Colors.black,
        title: const Text('PositionedTransition',style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Stack(
          children: <Widget>[
            PositionedTransition(
              rect: animation,
              child: Container(
                color: Colors.red.shade400,
                child: const Center(
                  child: Text(
                    'Moving Box',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
