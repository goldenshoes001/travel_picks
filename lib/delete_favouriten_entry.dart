import 'package:flutter/material.dart';

class Favouriten extends StatelessWidget {
  const Favouriten({
    super.key,
    required this.selectedCountries,
    required this.onRemoveCountry,
  });

  final List<String> selectedCountries;
  final ValueChanged<String>
  onRemoveCountry; // Callback, um ein Land zu entfernen

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "(${selectedCountries.length} ausgewählt)",
              style: const TextStyle(fontSize: 16, color: Colors.grey),
            ),
          ],
        ),
        const SizedBox(height: 8),
        // Zeigt die Favoriten-Chips an
        Wrap(
          spacing: 8,
          children: selectedCountries
              .map(
                (name) => Chip(
                  label: Text(name),

                  deleteIcon: const Icon(Icons.close, size: 18),
                  onDeleted: () => onRemoveCountry(name),
                ),
              )
              .toList(),
        ),
      ],
    );
  }
}
