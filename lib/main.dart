import 'package:flutter/material.dart';
import 'package:travel_picks/delete_favouriten_entry.dart';

import 'package:travel_picks/land_list.dart';
import 'package:travel_picks/own_card.dart';
import 'package:travel_picks/own_sized_box.dart';
import 'package:travel_picks/text_widget.dart';

void main() {
  runApp(const TravelApp());
}

class TravelApp extends StatelessWidget {
  const TravelApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Travel Picks")),
        body: const TravelHomePage(),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Suche"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profil"),
          ],
        ),
      ),
    );
  }
}

//TravelHomePage
class TravelHomePage extends StatefulWidget {
  const TravelHomePage({super.key});

  @override
  State<TravelHomePage> createState() => _TravelHomePageState();
}

class _TravelHomePageState extends State<TravelHomePage> {
  final List<String> _selectedCountries = [];

  void _addCountry(String countryName) {
    if (!_selectedCountries.contains(countryName)) {
      setState(() {
        _selectedCountries.add(countryName);
      });
    }
  }

  void _removeCountry(String countryName) {
    setState(() {
      _selectedCountries.remove(countryName);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          OwnCard(),

          OwnSizedBox(
            function: _addCountry,
            countries: Landlist.europeCountries,
            name: "Europa",
          ),

          OwnSizedBox(
            function: _addCountry,
            countries: Landlist.southAmericaCountries,
            name: "South America",
          ),
          TextWidget(text: "Favoriten"),
          Favouriten(
            selectedCountries: _selectedCountries,
            onRemoveCountry: _removeCountry,
          ),
        ],
      ),
    );
  }
}

//CountryCard
