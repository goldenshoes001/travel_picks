import 'package:flutter/material.dart';
import 'package:travel_picks/country_card.dart';
import 'package:travel_picks/land_list.dart';

class Listausgelagert extends StatelessWidget { 
  final void Function(String) function;
  final List<Map<String, String>> countries;
  const Listausgelagert({
    super.key,
    required this.function,
    required this.countries,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: Landlist.europeCountries
          .map(
            (country) => CountryCard(
              emoji: country["emoji"]!,
              name: country["name"]!,
              onTap: () => function(country["name"]!),
            ),
          )
          .toList(),
    );
  }
}
