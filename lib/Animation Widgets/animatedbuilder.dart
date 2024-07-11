// import 'package:flutter/material.dart';
//
// class AnimatedBuilderExample extends StatefulWidget {
//   const AnimatedBuilderExample({super.key});
//
//   @override
//   _AnimatedBuilderExampleState createState() => _AnimatedBuilderExampleState();
// }
//
// class _AnimatedBuilderExampleState extends State<AnimatedBuilderExample>
//     with SingleTickerProviderStateMixin {
//   AnimationController _controller;
//   Animation<double> _animation;
//
//   @override
//   void initState() {
//     super.initState();
//     _controller = AnimationController(
//       vsync: this,
//       duration: Duration(seconds: 2),
//     );
//     _animation = Tween<double>(begin: 0.0, end: 1.0).animate(_controller);
//     _controller.forward();
//   }
//
//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }
//
//   void _restartAnimation() {
//     setState(() {
//       _controller.reset();
//       _controller.forward();
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('AnimatedBuilder Example'),
//       ),
//       body: Center(
//         child: AnimatedBuilder(
//           animation: _animation,
//           builder: (BuildContext context, Widget child) {
//             return Opacity(
//               opacity: _animation.value,
//               child: Container(
//                 width: 200.0,
//                 height: 200.0,
//                 color: Colors.blue,
//                 child: Center(
//                   child: Text(
//                     'AnimatedBuilder',
//                     style: TextStyle(color: Colors.white),
//                   ),
//                 ),
//               ),
//             );
//           },
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _restartAnimation,
//         child: Icon(Icons.refresh),
//       ),
//     );
//   }
// }
