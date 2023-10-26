import 'package:firstapp/styled_text.dart';
import 'package:flutter/material.dart';

var startAlignment = Alignment.topLeft;
var endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, {super.key});

  final Color color1;
  final Color color2;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [color1, color2], begin: startAlignment, end: endAlignment),
      ),
      child: const Center(child: StyledText('Hello Sameer here')),
    );
  }
}

// Below is version 1 of code where the color of gradient is fix

// class GradientContainer extends StatelessWidget {
//   const GradientContainer({super.key});

//   @override
//   Widget build(context) {
//     return Container(
//       decoration: BoxDecoration(
//         gradient: LinearGradient(colors: const [
//           Color.fromARGB(255, 192, 20, 192),
//           Color.fromARGB(255, 136, 132, 132)
//         ], begin: startAlignment, end: endAlignment),
//       ),
//       child: const Center(child: StyledText('Hello Sameer here')),
//     );
//   }
// }

