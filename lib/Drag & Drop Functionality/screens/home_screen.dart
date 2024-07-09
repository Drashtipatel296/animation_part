import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../utils/data_list.dart';
import '../provider/game_provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'Matching game',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 22, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 40,right: 30,top: 65),
        child: Consumer<GameProvider>(
          builder: (context, gameProvider, child) {
           return Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Score : 5',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  Column(
                    children: [
                      ...List.generate(
                        gameProvider.data.length,
                        (index) => Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Draggable<Map<String, String>>(
                            data: data[index],
                            feedback: firstContainer(data[index]['img']),
                            child: firstContainer(data[index]['img']),
                          ),
                        ),
                      )
                    ],
                  ),
                  const Spacer(),
                  Column(
                    children: [
                      ...List.generate(
                        gameProvider.data2,
                        (index) => Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: DragTarget(
                            onAcceptWithDetails: (details) {

                            },
                            builder: (context, candidateData, rejectedData) =>
                                textContainer(data[index]['name']),
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
      ),
    );
  }

  Container textContainer(String name) {
    return Container(
      height: 60,
      width: 120,
      color: color,
      alignment: Alignment.center,
      child: Text(
        name,
        style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
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

Color color = Colors.purpleAccent;