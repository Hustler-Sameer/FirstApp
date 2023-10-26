import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  // below is the constructor function
  const StyledText(this.text, {super.key});
  // ignore: prefer_typing_uninitialized_variables
  final text;
  // here in the Styled text constructor we have enabled the user to give dynamic text
  // as input and now we will display that text in output
  // check where our StyledText is called
  @override
  Widget build(context) {
    return Text(
      text,
      style: const TextStyle(color: Colors.white, fontSize: 28.0),
    );
  }
}
