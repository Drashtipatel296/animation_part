import 'package:flutter/material.dart';

class AnimatedModalBarrierExample extends StatelessWidget {
  const AnimatedModalBarrierExample({super.key});

  void _showLoading(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return Dialog(
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const SizedBox(
              height: 100,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircularProgressIndicator(),
                  SizedBox(height: 16),
                  Text('Loading...'),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        shadowColor: Colors.black,
        title: const Text('AnimatedModalBarrier',style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            _showLoading(context);
          },
          child: const Text('Show Loading'),
        ),
      ),
    );
  }
}
