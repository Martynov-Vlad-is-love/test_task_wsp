import 'package:flutter/material.dart';

class BottomWideButton extends StatelessWidget {
  const BottomWideButton(
      {super.key,
      required this.size,
      required this.onPressed,
      required this.text});

  final Size size;
  final void Function() onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor:
            MaterialStateColor.resolveWith((states) => Colors.lightBlue),
        foregroundColor:
            MaterialStateColor.resolveWith((states) => Colors.black),
      ),
      child: SizedBox(
          width: size.width * 0.8,
          height: size.height * 0.06,
          child: Center(child: Text(text))),
    );
  }
}
