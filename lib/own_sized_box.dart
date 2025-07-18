import 'package:flutter/material.dart';
import 'package:travel_picks/text_Widget.dart';
import 'listausgelagert.dart';

class OwnSizedBox extends StatelessWidget {
  final void Function(String) function;
  final List<Map<String, String>> countries;
  final String name;
  final double size;
  const OwnSizedBox({
    super.key,
    required this.function,
    required this.countries,
    required this.name,
    this.size = 18,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextWidget(text: name),
        SizedBox(
          height: 140,
          child: Listausgelagert(function: function, countries: countries),
        ),
      ],
    );
  }
}
