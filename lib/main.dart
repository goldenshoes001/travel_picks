import 'package:flutter/material.dart';
import 'package:travel_picks/CountryCard.dart';
import 'package:travel_picks/ownCard.dart';
import 'package:travel_picks/landList.dart';

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

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ownCard(),
          SizedBox(height: 24),
          const Text("Europa", style: TextStyle(fontSize: 18)),
          const SizedBox(height: 8),
          SizedBox(
            height: 140,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: Landlist.europeCountries
                  .map(
                    (country) => CountryCard(
                      emoji: country["emoji"]!,
                      name: country["name"]!,
                      onTap: () => _addCountry(country["name"]!),
                    ),
                  )
                  .toList(),
            ),
          ),
          const SizedBox(height: 24),
          const Text("Südamerika", style: TextStyle(fontSize: 18)),
          const SizedBox(height: 8),
          SizedBox(
            height: 140,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: Landlist.southAmericaCountries
                  .map(
                    (country) => CountryCard(
                      emoji: country["emoji"]!,
                      name: country["name"]!,
                      onTap: () => _addCountry(country["name"]!),
                    ),
                  )
                  .toList(),
            ),
          ),
          const SizedBox(height: 24),
          const Text("Favoriten", style: TextStyle(fontSize: 18)),
          const SizedBox(height: 8),
          Wrap(
            spacing: 8,
            children: _selectedCountries
                .map((name) => Chip(label: Text(name)))
                .toList(),
          ),
        ],
      ),
    );
  }
}

//CountryCard
