 import 'package:flutter/material.dart';

class Landlist extends StatelessWidget {

   static final List<Map<String, String>> europeCountries = [
    {"emoji": "🇮🇹", "name": "Italien"},
    {"emoji": "🇪🇸", "name": "Spanien"},
    {"emoji": "🇩🇪", "name": "Deutschland"},
    {"emoji": "🇫🇷", "name": "Frankreich"},
    {"emoji": "🇳🇴", "name": "Norwegen"},
  ];

  static final List<Map<String, String>> southAmericaCountries = [
    {"emoji": "🇧🇷", "name": "Brasilien"},
    {"emoji": "🇦🇷", "name": "Argentinien"},
    {"emoji": "🇨🇱", "name": "Chile"},
    {"emoji": "🇵🇪", "name": "Peru"},
    {"emoji": "🇨🇴", "name": "Kolumbien"},
  ];
  const Landlist({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
 

