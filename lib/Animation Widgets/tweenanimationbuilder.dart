// import 'package:flutter/material.dart';
//
// class TweenAnimationBuilderExample extends StatefulWidget {
//   const TweenAnimationBuilderExample({super.key});
//
//   @override
//   _TweenAnimationBuilderExampleState createState() => _TweenAnimationBuilderExampleState();
// }
//
// class _TweenAnimationBuilderExampleState extends State<TweenAnimationBuilderExample> {
//   bool _isRed = true;
//
//   void _toggleColor() {
//     setState(() {
//       _isRed = !_isRed;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('TweenAnimationBuilder Example'),
//       ),
//       body: Center(
//         child: TweenAnimationBuilder<Color>(
//           duration: Duration(milliseconds: 500),
//           tween: ColorTween(begin: Colors.red, end: Colors.blue),
//           builder: (BuildContext context, Color color, Widget child) {
//             return Container(
//               width: 200,
//               height: 200,
//               color: color,
//               child: Center(
//                 child: Text(
//                   'Tap to Toggle Color',
//                   style: TextStyle(color: Colors.white),
//                 ),
//               ),
//             );
//           },
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _toggleColor,
//         child: Icon(Icons.color_lens),
//       ),
//     );
//   }
// }
