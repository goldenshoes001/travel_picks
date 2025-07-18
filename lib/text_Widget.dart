import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  final double size;
  final String text;
  final double heightSizedBoxEins;
  final double heightSizedBoxZwei;

  TextWidget({
    super.key,
    this.heightSizedBoxEins = 24,
    this.heightSizedBoxZwei = 8,
    this.size = 18,
    required this.text,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: heightSizedBoxEins),
        Text(text, style: TextStyle(fontSize: size)),
        SizedBox(height: heightSizedBoxZwei),
      ],
    );
  }
}
