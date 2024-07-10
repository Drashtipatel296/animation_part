import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/game_provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final gameProvider = Provider.of<GameProvider>(context);

    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        shadowColor: Colors.white,
        title: const Text(
          'Matching game',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 40, right: 30, top: 65),
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Text(
              'Score : ${gameProvider.getScore}',
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            const SizedBox(
              height: 50,
            ),
            gameProvider.isGameOver
                ? Center(
                    child: Text(
                      'Game Over',
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Colors.red),
                    ),
                  )
                : Row(
                    children: [
                      Column(
                        children: [
                          ...List.generate(
                            gameProvider.l1.length,
                            (index) => Padding(
                              padding: const EdgeInsets.symmetric(vertical: 15),
                              child: Draggable<String>(
                                childWhenDragging:
                                    Container(
                                      height: 50,
                                      width: 50,
                                      color: Colors.grey,
                                    ),
                                data: gameProvider.l1[index],
                                feedback:
                                    firstContainer(gameProvider.l1[index]),
                                child: firstContainer(gameProvider.l1[index]),
                              ),
                            ),
                          )
                        ],
                      ),
                      const Spacer(),
                      Column(
                        children: [
                          ...List.generate(
                            gameProvider.l2.length,
                            (index) => Padding(
                              padding: const EdgeInsets.symmetric(vertical: 15),
                              child: DragTarget<String>(
                                onLeave: (data) {
                                  gameProvider.accept = false;
                                },
                                onWillAcceptWithDetails: (data) => true,
                                onAcceptWithDetails: (details) {
                                  bool matched = gameProvider.matching(
                                      index, details.data);
                                  if (!matched) {
                                    showDialog(
                                      context: context,
                                      builder: (context) => AlertDialog(
                                        title: Text('Incorrect Match'),
                                        content: Text('Try again!'),
                                        actions: [
                                          TextButton(
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                            },
                                            child: Text('OK'),
                                          ),
                                        ],
                                      ),
                                    );
                                  }
                                },
                                builder:
                                    (context, candidateData, rejectedData) =>
                                        textContainer(
                                            gameProvider.l2[index],
                                            gameProvider.matched[index] == true,
                                            gameProvider.accept),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
          ],
        ),
      ),
    );
  }

  Container textContainer(String name, bool matched, bool accept) {
    return Container(
      height: 60,
      width: 130,
      decoration: BoxDecoration(
        color: Colors.teal.shade300,
        borderRadius: BorderRadius.circular(8),
      ),
      alignment: Alignment.center,
      child: Text(
        name,
        style:
            const TextStyle(fontSize: 18,color: Colors.black, fontWeight: FontWeight.bold),
      ),
    );
  }

  Container firstContainer(String img) {
    return Container(
      height: 60,
      width: 60,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(img),
        ),
      ),
    );
  }
}
