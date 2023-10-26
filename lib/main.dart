// ignore_for_file: empty_constructor_bodies

import 'package:flutter/material.dart';

// we can import other files in this way
import 'package:firstapp/gradient_container.dart';

// we can press control + spce to get suggestions
void main() {
  runApp(const MaterialApp(
    home: Scaffold(
        // ignore: avoid_unnecessary_containers
        body: GradientContainer(Color.fromARGB(90, 108, 5, 112),
            Color.fromARGB(31, 250, 247, 247))),
  ));
}
// here we are also now deciding the gradient color for our image